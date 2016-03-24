require 'sinatra/base'
require './lib/player'
require './lib/game'


class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # player = Player.new(params[:player])
    Game.create(params[:player])
     redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play'do
    Game.instance.player.choice(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    erb Game.instance.result
  end

# # start the server if ruby file executed directly
  run! if app_file == $0
end