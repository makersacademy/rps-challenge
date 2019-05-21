require 'sinatra/base'
require_relative 'models/player.rb'
require_relative 'models/computer.rb'
require_relative 'models/game.rb'

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
    session[:player_1] = Player.new(session[:name], nil)
    computer = Computer.new
    session[:player_2] = Player.new(computer.name, computer.move)
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

  post '/move' do
    session[:player_1].choose_move(params[:move])
    redirect '/move'
  end
  
  get '/move' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @game = Game.create(@player_1, @player_2)
    @outcome = @game.result(@player_1.move, @player_2.move)
    erb(:result)
  end
end
