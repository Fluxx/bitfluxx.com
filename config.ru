require "rack/jekyll"
require "rack-rewrite"

ENV['RACK_ENV'] ||= 'development'
ENV['SITE_URL'] ||= 'bltfluxx.com'

use Rack::Rewrite do

  r301 %r{.*}, "http://#{ENV['SITE_URL']}$&", :if => Proc.new do |rack_env|
    ENV['RACK_ENV'] == 'production' && rack_env['SERVER_NAME'] != ENV['SITE_URL']
  end    

  r301 %r{^(.+)/$}, '$1'
end

run Rack::Jekyll.new