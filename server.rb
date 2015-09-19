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
    session[:rps] = params[:rps]
    redirect to('/result')
  end

  get '/result' do
    player1 = Player.new
    player2 = Player.new
    @result = player1.compare(session[:rps], player2.random_rps)
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
