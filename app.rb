require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to ('/play')
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/game_play' do
    session[:user_choice] = params[:user_choice]
    session[:rps_choice] = Game.new(params[:rps_choice])
    redirect to('/results')
  end

  get '/results' do
    @user_choice = session[:user_choice]
    erb :results
  end

end
