require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    player_choice = params[:player_choice]
    @game.player_1.make_choice(player_choice)
    @game.ai_choice
    erb :result
  end


  run! if app_file == $0
end