require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:start)
  end

  post '/names' do
    @player_one = Player.new(params[:player_one])
    @player_two = Player.new(params[:player_two])
    $game = Game.new(@player_one, @player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/rock' do
    @game = $game
    @game.switch_players
    redirect '/play'
  end

  run! if app_file == $0
end
