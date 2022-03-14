require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'


class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player.name
    erb :play
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    @ai_choice = $game.ai_choice
    @player_choice = session[:player_choice]
    @result = $game.evaluation(@ai_choice, @player_choice)
    erb :result
  end

  # dont delete this
  run! if app_file == $0
end
