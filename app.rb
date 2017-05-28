require 'sinatra/base'

class Rsp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/results' do
    session[:player_selection] = params[:player_selection]
    redirect '/results'
  end

  get '/results' do
    @player_1_name = session[:player_1_name]
    @player_selection = session[:player_selection]
    @computer_selection = ["Scissors"].sample
    erb :results
  end

  run! if app_file == $0
end
