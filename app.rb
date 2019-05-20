require 'sinatra/base'
require_relative 'models/player.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player_1_name]
    redirect 'play'
  end

  get '/play' do
    session[player_1] = Player.new(session[:name], nil)
    computer = Computer.new
    session[player_2] = Player.new(computer.name, computer.move)
    @player_1 = session[player_1]
    @player_2 = session[player_2]
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
  end

  run! if app_file == $0

end