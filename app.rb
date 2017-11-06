require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  @@game = nil

  get '/' do
    erb(:index)
  end

  post '/names' do
    @@game = Game.new(Player.new(params[:player_1]))
    redirect '/play'
  end

  get '/play' do
    @player_1_name = @@game.player_1.name
    $player_2 = Computer.new
    @player_2_name = $player_2.name
    erb(:play)
  end

  post '/selection' do
    @@game.player_1.weapon = params[:action]
    redirect '/result'
  end

  get '/result' do
    @player_1_name = @@game.player_1.name
    @player_1_weapon = @@game.player_1.weapon
    @player_2_weapon = $player_2.weapon
    @player_2_name = $player_2.name
    @rules = @@game.rules
    @result = @rules[@player_1_weapon][@player_2_weapon]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
