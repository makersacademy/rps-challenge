require 'sinatra/base'
require './lib/game'
require './lib/player'


class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    Game.current = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current
    erb :play
  end

  get '/rock' do
    @game = Game.current
    @player_choice = "Rock"
    @choice = @game.choice.sample
    if @choice == "Scissors" then erb :win elsif @choice == "Paper" then erb :lost
    elsif @choice == "Rock" then erb :tie
    end
  end

  get '/paper' do
    @game = Game.current
    @player_choice = "Paper"
    @choice = @game.choice.sample
    if @choice == "Scissors" then erb :lost elsif @choice == "Paper" then erb :tie
    elsif @choice == "Rock" then erb :win
    end
  end

  get '/scissors' do
    @game = Game.current
    @player_choice = "Scissors"
    @choice = @game.choice.sample
    if @choice == "Scissors" then erb :tie elsif @choice == "Paper" then erb :win
    elsif @choice == "Rock" then erb :lost
    end
  end
  #-----------------------2 PLAYERS GAME----------------------------------------------------------------------
  #------------------------------------------------------------------------------------------------------------------------------------------
  post '/2name' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    Game.current= Game.new(player1, player2)
    redirect '/2play'
  end

  get '/2play' do
    @game = Game.current
    erb :twoplay
  end

  get '/2rock' do
    @game = Game.current
    erb :twoplayrock
  end

  get '/2paper' do
    @game = Game.current
    erb :twoplaypaper
  end

  get '/2scissors' do
    @game = Game.current
    erb :twoplayscissors
  end

  get '/2tie' do
    @game = Game.current
    erb :twotie
  end

  get '/2win' do
    @game = Game.current
    erb :twowin
  end

  get '/2lose' do
    @game = Game.current
    erb :twowin
  end


  run! if app_file == $0

end
