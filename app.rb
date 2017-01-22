require 'sinatra/base'
require 'sinatra'

require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    @game = Game.instance
    @game.place_moves(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  run! if app_file == $0
end
