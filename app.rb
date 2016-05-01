require 'sinatra/base'
require './lib/player' #require with path
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  get '/' do
    'Hello Rps!'
    erb :index
  end
  post '/names' do
    Player.create(params[:player_name])
    @player=Player.get_player
    Game.create(@player)
    @game=Game.game_in_play
    erb :play
  end
  before do
    @game=Game.game_in_play
    @player=Player.get_player
end

  post '/choice' do
    @game.choice(params[:choice])
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  post '/play-again' do
    Game.create(@player)
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
