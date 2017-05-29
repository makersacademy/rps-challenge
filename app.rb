require "sinatra/base"
require "./lib/player"
require "./lib/computer"
require "./lib/game"

class RockPaperScissor < Sinatra::Base

  player = Player.new('spencer')
  computer = Computer.new
  game = Game.new

  before do
    @player = player
    @computer = computer
    @game = game
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    redirect to('/play')
    erb :play
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  get '/rock' do
    @player1 = session[:player1]
    erb :rock
  end

  get '/paper' do
    @player1 = session[:player1]
    erb :paper
  end

  get '/scissors' do
    @player1 = session[:player1]
    erb :scissors
  end

  run! if app_file ==$0
end
