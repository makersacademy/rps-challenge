require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here
  get '/' do
    "Hello World"
  end

  get '/secret' do
    'This is a secret page'
  end

  
  run! if app_file == $0
end
