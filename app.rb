require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/randomizer'
require './lib/determinewinner'
require './lib/scoreboard'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(params[:name])
    redirect "/play"
  end

  get '/play' do
    @game = $game
    @name = @game.player
    erb :play
  end

  post '/player_choice' do
    @game = $game
    @computers_choice = @game.computers_choice
    @game.players_choice(params[:player_choice])
    redirect '/final_result'
  end

  get '/final_result' do
    @game = $game
    @winner = @game.winner
    @gameswon = @winner == 'Player wins' ? 1 : 0
    @gameslost = @winner == 'Computer wins' ? 1 : 0
    Scoreboard.addscore(id: @game.player, gameswon: @gameswon, gameslost: @gameslost)
    @scoreboard = Scoreboard.show

    erb :final_result
  end

  run! if app_file == $0
end
