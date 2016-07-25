require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    #@play = Play.new(session)
    @name = session[:name]
    erb :game
  end

  post '/game' do
    session[:player_choice] = params[:choice]
    # session[:opponent_choice] = Opponent.new.choice
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
