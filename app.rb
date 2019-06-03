require 'sinatra'
require './lib/player_move.rb'
require './lib/computer_move.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/play' do
    @name = session[:name]
    @choice_options = "Make your choice - rock, paper or scissors?"
    erb(:play)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  post '/player_move' do
    $player_move = PlayerMove.new(params[:player_move])
    redirect '/game_results'
  end

  get '/game_results' do
    @player_move = $player_move.make_move
    #@computer_move = ComputerMove.new.make_move
    @making_a_move = ComputerMove.new
    @computer_move = @making_a_move.make_move
    @game_outcome = Game.new(@making_a_move,$player_move).outcome
    erb(:game_results)
  end

end
