require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/ai'

class RPS < Sinatra::Base
  enable :sessions

  before do 
    @game = Game.instance
  end

  get '/' do
    erb :index
  end
  
  post '/names' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/game'
  end
  
  get '/game' do
    @game.player.name 
    erb :game
  end

  post '/weapon' do
    @game.player.weapon = params[:weapon]
    redirect '/play'
  end

  get '/play' do
    @game.player.name
    @game.ai.weapon_choice
    erb :play
  end


  run! if app_file == $0

end
