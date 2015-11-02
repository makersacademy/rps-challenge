require 'sinatra/base'
# require './lib/gamer'

class Game < Sinatra::Base

  enable :sessions

  run! if app_file == $0

  get '/' do
    erb :index
  end

  post '/' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @p_name = session[:player_name]
    erb :play
  end

  post '/play' do
    redirect('/result')
  end

  get '/result' do
    session[:player_choice] = params[:rps]
    @player_choice = session[:player_choice]
    # @p_name.option(@player_choice)
    erb :result
  end
end
