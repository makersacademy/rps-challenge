require 'sinatra'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] =params[:player_name]
      redirect '/play'
  end

  get '/play'do
    @game = Game.new
    @player_name =session[:player_name]
    @choice =session[:choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  post '/play' do
    session[:choice] =params[:choice]
    session[:computer_choice] = Computer.new
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
