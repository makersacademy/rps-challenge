require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/result' do
    session[:player_choice] = params[:choice]
    session[:pc_choice] = ['Rock', 'Paper', 'Scissors'].sample
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @player_choice = session[:player_choice]
    @pc_choice = session[:pc_choice]
    erb :result
  end
end
