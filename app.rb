require 'sinatra'
require 'sinatra/base'
require_relative 'models/player.rb'
require_relative 'models/game.rb'
require_relative 'models/cpu.rb'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    session[:player_1] = Player.new(session[:name], nil)
    computer = CPU.new
    session[:player_2] = Player.new(computer.name, computer.random_play)
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

  post '/game_over' do
    session[:move] = params[:move]
    redirect '/game_over'
  end

  get '/game_over' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1.set_move(session[:move])
    @game = Game.create(@player_1, @player_2)
    @outcome = @game.game_over(@player_1.move, @player_2.move)
    erb(:game_over)
  end

end
