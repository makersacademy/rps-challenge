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

  post '/enter-name-one-player' do
    @@game = Game.new(params[:name], Player, Computer)
    redirect '/choose-game'
  end

  post '/enter-name-2-player' do
    @@game = Game.new(params['name-1'], Player, Player, params['name-2'])
    redirect '/choose-game'
  end

  get '/choose-game' do
    @name = @@game.player_1.name
    erb(:choose_game)
  end

  post '/choose-game' do
    version = params[:game].gsub(/\s+/, "")
    @@game.version(Object.const_get(version))
    redirect "/play-#{route}"
  end

  get '/play-rock-paper-scissors' do
    @game_name = @@game.version_name
    @player_1 = @@game.player_1
    @player_2 = @@game.player_2
    @current_player = @@game.current_player
    erb(:play_rock_paper_scissors)
  end

  get '/play-rock-paper-scissors-lizard-spock' do
    @game_name = @@game.version_name
    @player_1 = @@game.player_1
    @player_2 = @@game.player_2
    @current_player = @@game.current_player
    erb(:play_rock_paper_scissors_lizard_spock)
  end

  post '/move' do
    Move.run(@@game.current_player, @@game.version, params[:move])
    @@game.switch_player
    if @@game.current_player == @@game.player_2 && @@game.current_player.name != 'Computer'
      redirect "/play-#{route}"
    else
      Move.run(@@game.current_player, @@game.version, params[:move])
    end
    @@game.results
    redirect '/results'
  end

  get '/results' do
    @player_1 = @@game.player_1
    @player_2 = @@game.player_2
    @results = @@game.results
    erb(:results)
  end

  post '/play-again' do
    @@game.reset
    redirect "/play-#{route}"
  end

  def route
    @@game.version_name.downcase.split.join('-')
  end

  run! if app_file == $0
end
