require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.new(session)
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/play' do
    session[:player_choice] = params[:player_choice]
    session[:computer_choice] = @game.choose
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/css/style.css' do
    scss :styles
  end
end
