require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/player'
require './lib/game'

class Rps < Sinatra::Application
  before { @game = Game.load_game }

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    new_game = Game.new(player)
    Game.save_game(new_game)
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player.name
    erb :play
  end

  run! if app_file == $PROGRAM_NAME
end
