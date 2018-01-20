require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/options' do
    player = Player.new(params[:player_name])
    Game.start(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
