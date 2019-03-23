require 'sinatra'
require 'sinatra/base'
require_relative 'models/player.rb'
require_relative 'models/game.rb'

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
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/game_over' do
    session[:move] = params[:move]
    redirect '/game_over'
  end

  get '/game_over' do
    @player_1 = session[:player_1]
    @game = Game.create(@player_1, "CPU")
    @game.set_move(@player_1, session[:move])
    erb(:game_over)
  end

end
