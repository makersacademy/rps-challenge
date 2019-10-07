require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    Player.set(params[:player1])
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    game = Game.new
    choice = params[:choice].to_s
    game.compete(choice)
    @message = game.message
    erb :play
  end

  run! if app_file == $0
end
