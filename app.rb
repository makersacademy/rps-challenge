require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = "RPS Bot"
    erb :play
  end

  post '/throw' do
    @player_1_name = session[:player_1_name]
    erb :throw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
