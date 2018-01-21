require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    session[:game].player.selection(params[:weapon])
    session[:game].computer
    redirect '/winner'
  end

  get '/winner' do
    session[:winner] = session[:game].winner
    erb :winner
  end

run! if app_file == $0

end
