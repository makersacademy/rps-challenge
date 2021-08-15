require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.game(player_1, player_2)
    redirect(:welcome)
  end

  get '/welcome' do
    @game = Game.game_instance
    erb(:welcome)
  end

  get '/first_player' do
    @game = Game.game_instance
    erb(:first_player)
  end

  get '/second_player' do
    @game = Game.game_instance
    erb(:second_player)
  end

  get '/result' do
    @game = Game.game_instance
    @game.calculate_result
    @insult = ["garbage", "rubbish", "trash"].sample
    erb(:result)
  end


  run! if app_file == $0
end
