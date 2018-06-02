require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    # 'This is a test'
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

  post '/play_rock' do
    @player_name = session[:player_name]
    computer=Computer.new
    @computer_move = computer.move
    erb :play_rock
  end

  run! if app_file == $0
end
