require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, ""

  get '/' do
    erb(:index)
  end

  get '/name' do
    'working!'
  end
end
