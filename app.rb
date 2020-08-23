require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base
  require_relative 'lib/game'
  require_relative 'lib/move'
  require_relative 'lib/player'

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    @game = Game.init(params[:game_mode])
    redirect '/single_player_name'
  end

  get '/single_player_name' do
    erb :single_player_name
  end

  post '/single_player_name' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.instance
    @game.add_players(player_1)
    redirect '/player_1_choice'
  end

  get '/two_player_names' do
    erb :two_player_names
  end

  post '/two_player_names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.instance
    @game.add_players(player_1, player_2)
    redirect '/player_1_choice'
  end

  get '/player_1_choice' do
    @game = Game.instance
    erb :player_1_choice
  end

  post '/player_1_choice' do
    @game = Game.instance
    @game.player_1.move = params[:move]
    if @game.game_mode == single_player
      redirect '/results'
    else
      redirect '/player_2_choice'
    end
  end
  
  get '/player_2_choice' do
    @game = Game.instance
    erb :player_2_choice
  end

  post '/player_2_choice' do
    @game = Game.instance
    @game.player_2.move = params[:move]
    redirect '/results'
  end
end