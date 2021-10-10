# frozen_literal_string: true

require 'sinatra'
require 'sinatra/reloader'

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
    @user_choice = session[:gesture]

    erb :result
  end

  run! if app_file == $0
end
