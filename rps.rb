require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/start' do
    player = Player.new(params[:player_name])
    redirect '/game'
  end

  get '/game' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
