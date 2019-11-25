require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    #'Hello Rps!'
    #'Testing infrastructure working!'
    erb :index
  end

  post '/name' do
  session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/game_redirect'do
    #session[:rbs_value]= params[:rbs_value]
    redirect '/game'
  end

  get '/game'do
    #@rbs_value = session[:rbs_value]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
