require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base

  before do
    @game = Game.game_instance
  end

  get '/' do
    erb :home
  end

  post '/names' do
    Game.create_new_game(Player.new(params[:player1]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/chosen' do
    
    redirect '/play'
  end

  run! if app_file == $0

end
