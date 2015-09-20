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
    session[:username] = params[:username]
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
