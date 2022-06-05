require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"
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
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    erb(:play)
  end

  post '/player_1_choice' do
    $game.player1.add('scissors') if params[:scissors]
    $game.player1.add('rock') if params[:rock]
    $game.player1.add('paper') if params[:paper]
    redirect ('/round2')
  end

  get '/round2' do
    erb(:round2)
  end

  post '/player_2_choice' do
    $game.player2.add('scissors') if params[:scissors]
    $game.player2.add('rock') if params[:rock]
    $game.player2.add('paper') if params[:paper]
    redirect ('/result')
  end

  get '/result' do
    @result = "#{$game.player1.name} wins!" if $game.winner == true
    @result = "#{$game.player2.name} wins!" if $game.winner == false
    @result = "It's a draw!" if $game.winner.nil?
    erb(:result)
  end

  run! if app_file == $0
end
