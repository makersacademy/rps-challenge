require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/player' do
    player = Player.new(params[:player_name])
    Game.store_game(Game.new(player))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/play' do
    redirect '/play'
  end

  run! if app_file == $0
end
