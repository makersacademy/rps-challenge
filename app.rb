require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/game-version' do
    p params
    $game = Game.new(params[:version])
    p $game
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
    p params
    $game.add_players(params.map { |k,name| Player.new(name) })
    p $game
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/game' do
    p params
    @game = $game
    @game.current_player.choose(params.keys.first)
    p @game
    @game.finished? ? (redirect '/outcome') : (redirect '/play')
  end

  get '/outcome' do
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
