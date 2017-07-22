require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  get '/play' do
    @player = session[:player_name] = params[:player_name]
    erb :play
  end

  post '/confirm' do
    @choice = params[:choice]
    @player = session[:player_name]
    erb :confirm
  end

end
