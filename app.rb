require 'sinatra/base'

require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    player_choice = (params[:radio])
    @game.player_throw(player_choice)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
