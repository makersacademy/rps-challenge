require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"
require "./lib/computer_player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player = Player.new(params[:name])
    @computer = ComputerPlayer.new
    $game = Game.new(@player, @computer)
    p @computer.choice
    erb(:play)
  end

  get '/choices' do
    $game.user.add('scissors') if params[:scissors]
    $game.user.add('rock') if params[:rock]
    $game.user.add('paper') if params[:paper]
    redirect ('/result')
  end

  get '/result' do
    @result = 'You win!' if $game.winner == true
    @result = 'Computer wins!' if $game.winner == false
    @result = "It's a draw!" if $game.winner.nil?
    p $game.computer.choice
    @player_choice = $game.user.choice
    @computer_choice = $game.computer.choice
    p @computer_choice
    erb(:result)
  end

  run! if app_file == $0
end
