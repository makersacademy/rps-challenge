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
    player_1 = Player.new(params[:name], nil)
    session[:game] = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    game = session[:game]
    @player_1 = game.player_1
    erb(:play)
  end

  post '/winner' do
    @player_1 = game.player_1
    @player_1.move = params[:move]
    redirect '/winner'
  end

  get '/winner' do
    erb(:winner)
  end

end
