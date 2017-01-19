require 'sinatra/base'
require './lib/game'
require './lib/computer'

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
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_choice] = params[:player_choice].downcase.to_sym
    session[:computer_choice] = Computer.new.computer_choice
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
