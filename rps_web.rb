require 'sinatra/base'
require_relative './lib/Computer'

class RPSWeb < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @option = session[:option]
    @computer_option = session[:computer_option]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    session[:computer_option] = Computer.new.random_option
    redirect '/play'
  end

end
