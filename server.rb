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
    unless session[:username_1]
      session[:username_1] = session[:username]
    end
    erb :welcome
  end

  get '/vs_computer' do
    erb :vs_computer
  end

  post '/vs_computer' do
    player = Player.new
    session[:rps] = params[:rps].to_sym
    session[:result] = player.compare(session[:rps], player.random_rps)
    redirect to('/result')
  end

  get '/vs_friends' do
    erb :vs_friends
  end

  post '/vs_friends' do
    if session[:player1_rps].nil?
      session[:player1_rps] = params[:rps]
      redirect to('player1_result')
    else
      session[:player2_rps] = params[:rps]
      redirect to('player2_result')
    end
  end

  get '/play_again' do
    session[:player1_rps] = nil
    session[:player2_rps] = nil
    redirect to('/vs_friends')
  end

  get '/player1_result' do
    @player = Player.new
    if session[:player1_rps] && session[:player2_rps]
      @result = @player.compare(session[:player1_rps].to_sym,
        session[:player2_rps].to_sym)
    end
    erb :player1_result
  end

  get '/player2_result' do
    @player = Player.new
    if session[:player1_rps] && session[:player2_rps]
      @result = @player.compare(session[:player2_rps].to_sym,
        session[:player1_rps].to_sym)
    end
    erb :player2_result
  end

  get '/result' do
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
