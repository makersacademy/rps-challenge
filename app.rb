require 'sinatra/base'
require_relative 'lib/game'

class Rps < Sinatra::Base
  enable :sessions 
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_name = params[:player_name]
    @game = Game.create(player_name)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack1' do
    @game.player_attack(params[:move])
    @game.computer_attack
    redirect '/attack'
  end

  get '/attack' do
    @winner = @game.winner
    erb :attack
  end
end