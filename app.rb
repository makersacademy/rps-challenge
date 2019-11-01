require 'sinatra'


class RPS < Sinatra::Base
  get '/hello' do
    'Hello World'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/scores' do
    $player_move = params[:pick_move]
    $computer_move = ["rock","paper","scissors"].sample
    redirect '/results'
  end

  get '/results' do
    @player_move = $player_move
    @computer_move = $computer_move
    erb :results
  end  
end