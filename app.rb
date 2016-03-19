require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1]= params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/check' do
    session[:choice]= params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_1 = session[:player_1]
    p @choice = session[:choice]
    computer = Computer.new
    p @computer_choice = computer.choice
    p @computer_result = computer.result(@choice)
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
