require 'sinatra/base'
#require_relative 'lib/game'

class RPS < Sinatra::Base

  enable :sessions

  # before do
  #   @game = Game.instance
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
