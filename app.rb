require 'sinatra/base'
require './lib/opponent'
require './lib/decider'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @move = session[:move]
    @opponent = Opponent.new
    @decider = Decider.new(@move, @opponent.move)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
