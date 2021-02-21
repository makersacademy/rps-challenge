require 'sinatra/base'
require './lib/player'
require './lib/game'

class RpsGame < Sinatra::Base
  get '/' do
    erb :index
  end

# Solo mode
  get '/one_player' do
    erb :enter_name
  end

  post '/one_player/game_setup' do
    player_1 = Player.new(params['player_1_name'])
    @game = Game.create(player_1, Player.new)
    redirect '/one_player/choice'
  end

  get '/one_player/choice' do
    @game = Game.instance
    erb :player_choice
    # choose btw rock, paper, scissors
  end

  post '/one_player/set_choice' do
    selection = params['selection']
    @game = Game.instance
    @game.selection(@game.player_1, selection)
    @game.random_selection(@game.player_2)
    redirect '/results'
  end

# Two players mode
  get '/two_players' do
    erb :two_players_enter_names
  end

  post '/two_players/game_setup' do
    player_1 = Player.new(params['player_1_name'])
    player_2 = Player.new(params['player_2_name'])
    @game = Game.create(player_1, player_2)
    redirect '/two_players/player_1/choice'
  end

  get '/two_players/player_1/choice' do
    @game = Game.instance
    erb :two_players_player_1_choice
  end

  post '/two_players/player_1/set_choice' do
    selection = params['selection']
    @game = Game.instance
    @game.selection(@game.player_1, selection)
    redirect 'two_players/player_2/choice'
  end

  get '/two_players/player_2/choice' do
    @game = Game.instance
    erb :two_players_player_2_choice
  end

  post '/two_players/player_2/set_choice' do
    selection = params['selection']
    @game = Game.instance
    @game.selection(@game.player_2, selection)
    redirect '/results'
  end

# Results route
  get '/results' do
    @game = Game.instance
    @game.results(@game.player_1, @game.player_2)
    erb :results
  end

  get '/reset' do
    @game = Game.instance
    Game.remove(:@game)
    redirect '/'
  end
end
