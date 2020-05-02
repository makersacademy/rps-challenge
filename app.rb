require 'sinatra/base'

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
    $player1 = (params[:player1])
    $player2 = (params[:player2])
    redirect '/play'
  end

  get '/play' do 
    @gametype = $gametype
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  post '/player1move' do 
    $player1move = params[:move]
    @player2 = $player2
    @gametype = $gametype 
    redirect '/play2' if @gametype == '2 Player' 
    redirect '/1results'
  end

  get '/play2' do 
    @gametype = $gametype
    @player1 = $player1
    @player2 = $player2
    @player1move = $player1move
    erb :play2
  end

  post '/player2move' do 
    @player1 = $player1
    @player2 = $player2
    @player1move = $player1move
    $player2move = params[:move]
    redirect '/2results'
  end

  get '/1results' do 
  end

  get '/2results' do 
  end
end