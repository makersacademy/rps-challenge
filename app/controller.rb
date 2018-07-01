require 'sinatra'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/store_name' do
    Player.create(params[:name])
    redirect '/selection_screen'
  end

  get '/selection_screen' do
    @name = Player.name
    erb :selection_screen
  end

  post '/player_pick' do
    player_pick = params[:player_pick].to_sym
    Player.pick = player_pick
    redirect '/result'
  end

  get '/result' do
    player_pick = Player.pick
    computer_pick = Computer.pick
    game = Game.new(player_pick, computer_pick)
    erb game.result
  end
end
