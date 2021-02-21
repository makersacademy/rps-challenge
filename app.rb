# frozen_string_literal: true

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
    player_one = Player.new(params['player_one_name'])
    @game = Game.create(player_one, Player.new)
    redirect '/one_player/choice'
  end

  get '/one_player/choice' do
    @game = Game.instance
    erb :player_choice
    # choose btw rock, paper, scissors
  end

  post '/one_player/receive_choice' do
    selection = params['selection']
    @game = Game.instance
    @game.selection(@game.player_one, selection)
    @game.random_selection(@game.player_two)
    redirect '/results'
  end

  # Two players mode
  get '/two_players' do
    erb :two_players_enter_names
  end

  post '/two_players/game_setup' do
    player_one = Player.new(params['player_one_name'])
    player_two = Player.new(params['player_two_name'])
    @game = Game.create(player_one, player_two)
    redirect '/two_players/player_one/choice'
  end

  get '/two_players/player_one/choice' do
    @game = Game.instance
    erb :two_players_player_one_choice
  end

  post '/two_players/player_one/receive_choice' do
    selection = params['selection']
    @game = Game.instance
    @game.selection(@game.player_one, selection)
    redirect 'two_players/player_two/choice'
  end

  get '/two_players/player_two/choice' do
    @game = Game.instance
    erb :two_players_player_two_choice
  end

  post '/two_players/player_two/receive_choice' do
    selection = params['selection']
    @game = Game.instance
    @game.selection(@game.player_two, selection)
    redirect '/results'
  end

  # Results route
  get '/results' do
    @game = Game.instance
    @game.results(@game.player_one, @game.player_two)
    erb :results
  end

  get '/reset' do
    @game = Game.instance
    Game.remove(:@game)
    redirect '/'
  end
end
