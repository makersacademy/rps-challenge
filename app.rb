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
    p params
    player = Player.new(params[:player_name])
    new_game = Game.new(player)
    Game.save_game(new_game)
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player.name
    @computer_name = @game.computer.name
    erb :play
  end

  post '/choice' do
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
