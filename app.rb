require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/players' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player_moves' do
    @game.player.choose(params[:move])
    redirect '/move'
  end
        
  get '/move' do
    erb :move
  end

  get '/winner' do
    erb :winner
  end

  run! if app_file == $0
end
