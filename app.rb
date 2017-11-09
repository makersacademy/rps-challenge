require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/sign_in_player' do
    @game = Game.new_game(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
