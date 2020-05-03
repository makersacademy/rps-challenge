require 'sinatra/base'
require './lib/player'
require './lib/move'

class Rps < Sinatra::Base

  get '/' do 
    erb :index
  end

  post '/gametype' do 
    $gametype = params[:gametype]
    redirect '/names'
  end

  get '/names' do 
    @gametype = $gametype
    erb :names
  end

  post '/setnames' do 
    @gametype = $gametype
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do 
    @player_1 = $player_1
    erb :play
  end

  post '/player1move' do 
    @player_1 = $player_1
    $player_1_move = Move.new(params[:move])
    @gametype = $gametype 
    redirect '/play2' if @gametype == '2 Player' 
    redirect '/1results'
  end

  get '/play2' do 
    @player_2 = $player_2
    erb :play2
  end

  post '/player2move' do 
    @player_2 = $player_2
    $player_2_move = Move.new(params[:move])
    redirect '/2results'
  end

  get '/1results' do 
    p $player_1
    p $player_1_move
  end

  get '/2results' do 
    p $gametype
    p $player_1
    p $player_1_move
    p $player_2
    p $player_2_move
  end
end