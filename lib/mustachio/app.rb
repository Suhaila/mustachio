require File.join(File.dirname(__FILE__), '..', 'mustachio')
require 'sinatra/base'

module Mustachio
  class App < Sinatra::Base
    DEMO_IMAGE = 'http://quickleft-production.s3.amazonaws.com/uploads/user/team_page_sprite/2/Ingrid_Large.png'

    set :static, true

    configure :production do
      require 'newrelic_rpm' if ENV['NEW_RELIC_ID']
    end

    before do
      app_host = ENV['MUSTACHIO_APP_DOMAIN']
      if app_host && request.host != app_host
        request_host_with_port = request.env['HTTP_HOST']
        redirect request.url.sub(request_host_with_port, app_host), 301
      end
    end

    get %r{^/(\d+|rand)?$} do |stache_num|
      src = params[:src]
      if src
        image = Magickly.process_src params[:src], :mustachify => (stache_num || 'rand')
        image.to_response(env)
      else
        @stache_num = stache_num
        @site = Addressable::URI.parse(request.url).site
        haml :index
      end
    end

    get '/ping' do
      "pong!"
    end
  end
end
