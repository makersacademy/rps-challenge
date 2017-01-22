require 'sinatra/base'
require './lib/game'
require './lib/winner'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    session[:marketeer_name] = params[:marketeer_name]
    erb :index
  end

  post '/selection' do
    session[:marketeer_name] = params[:marketeer_name]
    @marketeer = session[:marketeer_name]
    erb :selection
  end

  post '/game' do
    session[:choice] = params[:choice]
    redirect '/game'
  end

  get '/game' do
    @choice = session[:choice]
    erb :game
  end

  get '/winner' do
    @choice = session[:choice]
    @opponent = Game.new.random_selection
    @winner = Winner.new.result(@choice, @opponent)
    @marketeer = params[:marketeer_name]
    erb :winner
  end

  post 'winner' do
    erb :selection
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
