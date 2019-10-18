require 'sinatra'
require 'game'
require 'player'

class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :main_page
  end

  get '/infra' do
    'Testing infrastructure working!'
  end

  post '/register-names' do
    $player = Player.new(params[:player])
    redirect '/registered-players'
  end

  get '/registered-players' do
    @player = $player.player_name
    erb :registered_page
  end

  get '/game' do
    game = Game.new
    $player.players_move('rock')
    game.workout_winner($player.move, 'paper')
    @winner = game.winner
    @loser = game.loser
    erb :game
  end

end
