require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :register
  end

  post '/name' do
    session[:player] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    session[:move] = params[:rps_choice]
    erb :play
    # redirect '/paper'
  end

  post '/result' do
    session[:move]
  end


  run! if app_file == $0
end
