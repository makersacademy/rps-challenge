require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    redirect to('/no_name') if params[:username] == ''
    if session[:username]
      session[:username_1] = params[:username]
    else
      session[:username] = params[:username]
    end
    p "username #{session[:username]}"
    p "useranme_1 #{session[:username_1]}"
    redirect to('/welcome')
  end

  get '/no_name' do
    erb :sign_up
  end

  get '/welcome' do
    erb :welcome
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    player = Player.new
    computer = Player.new
    session[:rps] = params[:rps].to_sym
    session[:result] = player.compare(session[:rps], computer.random_rps)
    redirect to('/result')
  end

  get '/result' do
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
