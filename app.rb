require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @player = @game.player
    erb :play
  end

  post '/weapon' do
    p params
    session[:weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @player = @game.player
    @weapon = session[:weapon]
    erb :result
  end

  run! if app_file == $0
end
