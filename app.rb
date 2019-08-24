require 'sinatra/base'
require_relative 'lib/rps'
require_relative 'lib/rpsls'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/cpu'
require_relative 'lib/move'

class RockPaperScissorsApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/enter-name' do
    @@game = Game.new(params[:name], Player, Computer)
    redirect '/choose-game'
  end

  get '/choose-game' do
    @name = @@game.name
    erb(:choose_game)
  end

  post '/choose-game' do
    if params[:game] == 'Rock Paper Scissors'
      @@game.version(RockPaperScissors)
      redirect '/play'
    elsif params[:game] == 'Rock Paper Scissors Lizard Spock'
      @@game.version(RockPaperScissorsLizardSpock)
      redirect '/play-spock'
    end
  end

  get '/play' do
    @game_name = @@game.version_name
    @name = @@game.name
    erb(:play)
  end

  get '/play-spock' do
    @game_name = @@game.version_name
    @name = @@game.name
    erb(:play_spock)
  end

  post '/move' do
    Move.run(@@game.player_1, @@game.version, params[:move])
    # @@game.user_move(params[:move])
    # @@game.ai_move
    Move.run(@@game.player_2, @@game.version, params[:move])
    @@game.results
    redirect '/results'
  end

  get '/results' do
    @player_1 = @@game.player_1
    @player_2 = @@game.player_2
    @results = @@game.results
    erb(:results)
  end

  run! if app_file == $0
end
