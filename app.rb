require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @selection = session[:selection]
    @computer_selection = session[:computer_selection]
    erb :play
  end

  post '/play_game' do
    session[:selection] = params[:selection]
    session[:computer_selection] = Computer.new.selection
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
