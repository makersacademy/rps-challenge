require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/game-version' do
    $game = Game.new(params[:version])
    redirect '/player-count'
  end

  get '/player-count' do
    erb :player_count
  end

  get '/single_player' do
    erb :single_player_name
  end

  get '/multi_player' do
    erb :multi_player_name
  end

  post '/playernames' do
    $game.add_players(params.map { |k,name| Player.new(name) })
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.turn_randomizer
    erb :play
  end

  post '/game' do
    @game = $game
    @game.current_player.choose(params.keys.first)
    @game.finished? ? (redirect '/outcome') : (redirect '/play')
  end

  get '/outcome' do
    @game = $game
    @outcome = @game.result
    erb :outcome
  end

  post '/reset' do
    $game.reset_players
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
