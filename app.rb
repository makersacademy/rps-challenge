require 'sinatra/base'
require './lib/player.rb'


class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = Player.new(params[:name])
    redirect 'game'
  end

  get '/game' do
    @player_name = session[:player_name].name
    erb(:game)
  end

  post '/results' do
    session[:player_move]= params[:player_move]
    @player_move = session[:player_move]
    @outcome = session[:player_name].move(@player_move)
    @computer = session[:player_name].computer
    erb(:results)
  end

  run! if app_file == $0

end
