require 'sinatra/base'
require './lib/human_player'
require './lib/rps_game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params[:name]
    player = HumanPlayer.new(params[:name])
    @game = RPSGame.create(player, "")
    redirect '/play'
  end

  get '/play' do
    p @game
    @game = RPSGame.instance
    erb :play
  end

  post '/weapon' do
    session[:weapon] = params[:weapon]
    redirect '/action'
  end

  get '/action' do
    @game = RPSGame.instance
    @weapon = session[:weapon]
    erb :action
  end

  run! if app_file == $0
end
