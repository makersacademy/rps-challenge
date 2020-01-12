require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_move] = params[:choice]
    session[:random_move] = Computer.new.move
    # @game.who_won
    redirect '/play'
  end
  
  run! if app_file == $0
end
