require 'sinatra/base'
require './lib/player'
require './lib/move'
require './lib/cpu'
require './lib/calculate'
require './lib/scoreboard'


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
    $scoreboard = Scoreboard.new
    @scoreboard = $scoreboard
    redirect '/play'
  end

  get '/play' do 
    @scoreboard = $scoreboard
    @player_2 = $player_2
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
    @scoreboard = $scoreboard
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play2
  end

  post '/player2move' do 
    @player_2 = $player_2
    $player_2_move = Move.new(params[:move])
    redirect '/2results'
  end

  get '/1results' do 
    @player_1 = $player_1
    @player_1_move = $player_1_move
    $cpu_move = Cpu.new
    @cpu_move = $cpu_move
    $calculate = Calculate.new(@player_1_move.move, @cpu_move.move)
    $result = $calculate.result
    @result = $result
    erb :result
  end

  get '/2results' do 
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1_move = $player_1_move
    @player_2_move = $player_2_move
    $calculate = Calculate.new(@player_1_move.move, @player_2_move.move)
    $result = $calculate.result
    @result = $result
    erb :result2
  end

  post '/playagain' do 
    @result = $result
    @scoreboard = $scoreboard
    @scoreboard.add_score(@result)
    redirect '/play'
  end

  post '/final_score' do  
    @result = $result   
    @scoreboard = $scoreboard
    @scoreboard.add_score(@result)
    redirect '/goodbye'
  end

  get '/goodbye' do 
    @player_1 = $player_1
    @player_2 = $player_2
    @scoreboard = $scoreboard
    @gametype = $gametype
    erb :goodbye
  end
end