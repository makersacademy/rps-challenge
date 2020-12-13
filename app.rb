require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:player_name]
    erb :game
  end

  post '/weapon' do
    session[:weapon] = params[:weapon]
    redirect '/results'
  end

  get '/results' do
    @computer = Computer.new
    @player = Player.new(session[:player_name], session[:weapon])
    @game = Game.new(@player, @computer)
    erb :results
  end

  run! if app_file == $0

end
