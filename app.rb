require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
