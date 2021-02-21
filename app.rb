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
    @game = Game.create(player_1, Player.new)
    # redirect to choice page
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
    redirect '/one_player/results'
  end

  get '/two_players' do
    erb :two_players_enter_names
  end

  post '/two_players/game_setup' do
    # create the game instance
    player_1 = Player.new(params['player_1_name'])
    player_2 = Player.new(params['player_2_name'])
    @game = Game.create(player_1, player_2)
    # redirect to choice page
    redirect '/two_players/player_1_choice'
  end

  get '/two_players/player_1_choice' do
    @game = Game.instance
    erb :two_players_player_1_choice
    # choose btw rock, paper, scissors
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
    # choose btw rock, paper, scissors
  end

  post '/two_players/player_2/set_choice' do
    selection = params['selection']
    @game = Game.instance
    @game.selection(@game.player_2, selection)
    redirect '/one_player/results'
  end

  get '/one_player/results' do
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
