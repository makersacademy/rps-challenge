require 'sinatra/base'
require './lib/game'


class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @game = Game.create
    erb(:play)
  end

  post '/result' do
    @game = Game.instance
    @player_input = @game.player_move(params[:input])
    @comp_input = @game.move_chooser
    erb(:result)
  end

  run! if app_file == $0
end
