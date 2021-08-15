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
    redirect(:play)
  end

  get '/play' do
    @game = Game.game_instance
    @game.reset_winner_loser
    erb(:play)
  end

  get '/result' do
    @game = Game.game_instance
    @game.play
    @insult = ["garbage", "rubbish", "trash"].sample
    erb(:result)
  end


  run! if app_file == $0
end
