require 'sinatra/base'
require 'game'
require 'player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  get '/name-select' do
    erb(:names)
  end

  get '/play' do
    @game = Game.get_game
    @choices = @game.player_choices
    erb(:play)
  end

  post '/names' do
    Game.create_game(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/choice' do
    @game = Game.get_game
    @game.players[0].choice = params[:choice]
    redirect '/play'
  end

  run! if app_file == $0
end
