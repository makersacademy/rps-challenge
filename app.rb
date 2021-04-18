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
    @computer_name = @game.computer.name
    erb :play
  end

  post '/choice' do
    @game.player_weapon = params[:player_weapon]
    redirect '/result'
  end

  get '/result' do
    @player_name = @game.player.name
    @computer_name = @game.computer.name
    @player_weapon = @game.player_weapon
    @computer_weapon = @game.computer.chose_weapon
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
