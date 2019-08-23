require 'sinatra/base'
require_relative 'lib/rps'
require_relative 'lib/rpsls'
require_relative 'lib/game'
require_relative 'lib/player'

class RockPaperScissorsApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/enter-name' do
    @@game = Game.new(params[:name], Player)
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
    @@game.user_move(params[:move])
    @@game.ai_move
    @@game.results
    redirect '/results'
  end

  get '/results' do
    @p1 = @@game.player_1
    @p2 = @@game.player_2
    @results = @@game.results
    erb(:results)
  end

  run! if app_file == $0
end
