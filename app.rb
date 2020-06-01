require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    'Hello Battle!'
    erb :game
  end

  get '/game' do
    erb :name
  end

  post '/names' do
    erb :play
  end

  run! if app_file == $0

end
