# $ ruby app.rb
#
require 'rubygems'
require 'sinatra'

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot
end

# Routes

get '/' do
  @title = 'Prototype'
  erb :index
end

#get '/gallery' do
  #erb :gallery
#end

#get '/forms' do
  #erb :forms
#end

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