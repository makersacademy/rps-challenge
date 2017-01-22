require 'sinatra/base'
require './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    session[:game] = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  get '/results' do
    @game = session[:game]
    @game.play(params[:choice])
    erb :results
  end

  run! if app_file == $0
end
