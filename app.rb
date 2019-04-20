require 'sinatra/base'
require 'sass'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  enable :sessions
  
  get '/styles.css' do
    scss :styles
  end

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  get '/start' do
    player_one = Player.new(session[:player_name])
    @game = Game.new(player_one)
    @user_choice = session[:user_choice]
    erb :start
  end

  post '/play' do
    session[:player_name] = params[:name]
    redirect '/start'
  end

  post '/user_choice' do
    session[:user_choice] = params[:user_select]
    redirect '/start'
  end
end
