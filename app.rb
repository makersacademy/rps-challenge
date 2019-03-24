require 'sinatra/base'
require 'sinatra/reloader'
require './lib/rps'
require './lib/player'
require './lib/winner'


class Game < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = RPS.instance 
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/create_game' do
    player1 = params[:player1] == "" ? Player.new(params[:computer1]) : Player.new(params[:player1])
    player2 = params[:player2] == "" ? Player.new(params[:computer2]) : Player.new(params[:player2])
    @game = RPS.create(player1,player2)
    redirect '/play'
  end

  get '/play' do
    @game.computer_turn? ? redirect('/computer_turn') : erb(:play)
  end

  get '/computer_turn' do
    
    player = @game.get_turn
    player.choice = @game.get_computer_choice
    @game.change_turn

    @game.completed_run.count == 2 ? erb(:computer_message_turn2) : erb(:computer_message_turn1)

  end

  post '/turn' do
    player = @game.get_turn
    player.choice = params[:result]
    @game.change_turn
  
    @game.completed_run.count == 2 ? redirect('/result') : redirect('/play')
  end

  get '/result' do
    @result = Winner.run(@game.player1, @game.player2)
    
    erb :result
  end

  post '/reset_game' do
    @game.reset_game
  
    redirect '/play'
  end

end