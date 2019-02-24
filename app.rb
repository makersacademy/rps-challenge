require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:marketeer1]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    # @marketeer1 = session[:marketeer1]
    # @choice = session[:choice]
    # @opponent_choice = session[:opponent_choice]
    erb :play
  end

  post '/play' do
    session[:player_choice] = params[:choice]
    session[:opponent_choice] = [:rock, :paper, :scissors].sample
    # session[:opponent_choice] = :rock
    redirect '/play'
   end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
