require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player_1] = params[:player_1]
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/result' do
    @player_1 = session[:player_1]
    session[:player_1_choice] = params[:Move]
    @player_1_choice = session[:player_1_choice]
    erb(:result)
  end




end
