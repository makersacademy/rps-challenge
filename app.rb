require 'sinatra/base'
require './lib/player'
require './lib/game'

class RpsGame < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/one_player' do
    erb :enter_name
  end

  post '/one_player/game_setup' do
    # create the game instance
    player_1 = Player.new(params['player_1_name'])
    $game = Game.new(player_1, Player.new)
    # redirect to choice page
    redirect '/one_player/choice'
  end

  get '/one_player/choice' do
    @game = $game
    erb :player_choice
    # choose btw rock, paper, scissors
  end

  post '/one_player/set_choice' do
    selection = params['selection']
    @game = $game
    @game.selection(@game.player_1, selection)
    redirect '/one_player/results'
  end

  get '/one_player/results' do
    "The winner is ...."
  end
end
