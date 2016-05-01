require 'sinatra/base'
require './lib/player'
require './lib/game'


class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new params[:name]
    @game = Game.create player
    redirect '/play'
  end
  before do
    @game = Game.instance
  end
  get '/play' do
    erb :play
  end

  post '/decision' do
    @game.choices params[:choice]
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
