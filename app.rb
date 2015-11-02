require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer_player'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/get-rules' do
    redirect '/rules'
  end

  get '/rules' do
    erb :rules
  end

  post '/game-version' do
    $game = Game.new(params[:version])
    redirect '/player-count'
  end

  get '/player-count' do
    erb :player_count
  end

  get '/oneplayer' do
    erb :oneplayer
  end

  get '/twoplayer' do
    erb :twoplayer
  end

  post '/playernames' do
    $game.add_players(params.map { |k,name| Player.new(name) })
    $game.set_player_2(ComputerPlayer.new($game.version)) if $game.computer_needed?
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
    @result = @game.result
    erb :outcome
  end

  post '/reset' do
    $game.reset_players
    redirect '/play'
  end

  run! if app_file == $0
end
