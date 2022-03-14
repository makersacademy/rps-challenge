require 'sinatra/base' 
require 'sinatra/reloader'
require_relative './lib/player.rb'
require_relative './lib/game.rb'



class RockPaperScissors < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/setup' do
    p params
    @player1 = Player.new(params[:player])
    @player2 = Player.new()
    $game = Game.new(@player1, @player2)
    redirect '/choose_move'
  end

  get '/choose_move' do
    @player1_name = $game.player1.name
    @player2_name = $game.player2.name
    erb(:game)
  end

  post '/choose_rock' do
    $game.player1.move = "Rock"
    redirect '/choose_move'
  end

  post '/choose_paper' do
    $game.player1.move = "Paper"
    redirect '/choose_move'
  end

  post '/choose_scissors' do
    $game.player1.move = "Scissors"
    redirect '/choose_move'
  end

  get '/result' do
    @player1_name = $game.player1.name
    @player1_move = $game.player1.move
    @player2 = $game.player2
    @player2_name = $game.player2.name
    @player2.randomise_move
    @player2_move = @player2.move
    $game.assess_result
    @result = $game.result
    erb(:result)
  end

  run! if app_file == $0
end