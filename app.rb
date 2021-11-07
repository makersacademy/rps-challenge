require 'sinatra'
require 'sinatra/reloader'
require './lib/rules'
require './lib/element'
require './lib/game'

class RPS < Sinatra::Base
  configure :development do
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/start'
  end

  get '/start' do
    @player_name = session[:player_name]

    erb :name
  end

  get '/play' do
    @player_name = session[:player_name]
    $game = Game.new
    erb :play
  end

  post '/who_is_winner' do
    session[:selected_option] = params[:element]
    redirect '/winner'
  end

  get '/winner' do
    @player_name = session[:player_name]
    @selected_option = session[:selected_option]
    erb :winner
  end

  run! if app_file == $0
end
