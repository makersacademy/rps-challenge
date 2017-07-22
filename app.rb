require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/confirm' do
    session[:human_choice] = params[:choice]
    redirect '/confirm'
  end

  get '/confirm' do
    @player = session[:player_name]
    @choice = session[:human_choice]
    erb :confirm
  end

end
