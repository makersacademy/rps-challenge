require "sinatra/base"
require "./lib/player"
require "./lib/computer"
require "./lib/game"

class RockPaperScissor < Sinatra::Base

  player = Player.new('spencer')
  computer = Computer.new
  game = Game.new
  rock = player.rock
  paper = player.paper
  scissors = player.scissors
  computer_move = computer.computer_move
  game_rules = game.rules



  before do
    @player = player
    @computer = computer
    @game = game
    @rock = rock
    @paper = paper
    @scissors = scissors
    @computer_move = computer_move
    @game_rules = game_rules
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    @computer = params[:computer]
    redirect to('/play')
    erb :play
  end

  get '/play' do
    @player = session[:player1]
    @computer_move = session[:computer]
    erb :play
  end

  get '/rock' do
    @player = session[:player1]
    erb :rock
  end

  get '/paper' do
    @player = session[:player1]
    erb :paper
  end

  get '/scissors' do
    @player = session[:player1]
    erb :scissors
  end

  run! if app_file ==$0
end
