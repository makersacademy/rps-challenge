require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    Game.start ""
    erb :index
  end

  post '/username' do
    Game.start(Player.new(params[:username]))
    redirect '/play'
  end

  get '/play' do
    @player =  Game.player
    erb :play
  end

  post '/selection' do
    Game.player.chooses params[:choice]
    Game.generate
    redirect '/result'
  end

  get '/result' do
    @game = Game
    erb :result
  end

  get '/back_to_play' do
    redirect '/play'
  end

  get '/counter' do
    "#{Game.counter}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
