require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions


  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

end
