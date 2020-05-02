require 'sinatra'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    erb :play
  end
end
