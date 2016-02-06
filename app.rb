require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    redirect '/play'
  end


  get '/play' do
    @player1_name = $player1.name
    erb :play
  end

  post '/choices' do
    $player1.make_choice(params[:choice])
    redirect '/results'
  end

  get '/results' do
    @player1_name = $player1.name
    @player1_choice = $player1.player_choice
    p @player1_choice
    erb :results
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
