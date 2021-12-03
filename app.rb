require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/computer_move'
require_relative './lib/game_logic'


class RPS < Sinatra::Base 
  configure :development do
    enable :sessions
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @move = session[:move]
    @computer_move = ComputerMove.new.computer_move
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/play'
  end

  get '/play_again' do
    session[:move] = nil
    redirect '/play'
  end

end