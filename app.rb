# frozen_literal_string: true

require 'sinatra'
require 'sinatra/reloader'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params['player_name']

    redirect '/play'
  end

  get '/play' do
    @player_name = session[:name]

    erb :game
  end

  post '/play' do
    session[:gesture] = params['gesture']

    redirect 'result'
  end

  get '/result' do
    @player_name = session[:name]
    @user_choice = session[:gesture]
    @computer_choice = Computer.new.random_gesture

    erb Game.new.result(@user_choice.to_sym, @computer_choice.to_sym)
  end

  run! if app_file == $0
end
