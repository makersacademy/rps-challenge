require 'sinatra/base'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    redirect '/play'
  end

  get '/play' do
    erb :play
  end
end
