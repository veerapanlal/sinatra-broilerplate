$:.unshift File.expand_path('../../../lib', __FILE__)

require 'sinatra/base'
require 'sinatra/assetpack'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  assets do
    #js_compression :closure
    js_compression :uglify

    js :main, '/js/main.js', [
      '/js/vendor/*.js',
      '/js/app.js'
    ]

    css :main, [
      '/css/*.css'
    ]

    # The second parameter here is optional (see above).
    # It will default to '/css/#{name}.css'.
    css :more, '/css/more.css', [
      '/css/more/*.css'
    ]

    prebuild true
  end

  get '/' do
    erb :index
  end

  # Errors

  not_found do
    erb :'404'
  end

  error do
    erb :'500'
  end

  # Redirects

  get '/twitter' do
    redirect 'http://twitter.com'
  end

  # Partials

  helpers do
    def render_partial(template, args = {})
      template_array = template.to_s.split('/')
      template = template_array[0..-2].join('/') + "/_#{template_array[-1]}"
      erb(template.to_sym, :locals => args, :layout => false)
    end
  end

end

if __FILE__ == $0
  App.run!
end