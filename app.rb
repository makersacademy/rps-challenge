require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    'Hello Battle!'
  end

  get '/game' do
    erb :game
  end

  post '/names' do
    erb :play
  end

  run! if app_file == $0

end
