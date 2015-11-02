require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/choice' do
    @game = $game
    @game.select_player_choice(params[:choice].to_sym)
    @game.select_game_choice
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
