require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base
  require_relative 'lib/game'
  require_relative 'lib/player'
  require_relative 'lib/mode'

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    @mode = Mode.init(params[:game_mode])
    @mode = Mode.instance
    if @mode.game_mode == "Single Player Mode"
      redirect '/single_player_name'
    elsif @mode.game_mode == "Two Player Mode"
      redirect '/two_player_names'
    end
  end

  get '/single_player_name' do
    erb :single_player_name
  end

  post '/single_player_name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new
    @game = Game.init(player_1, player_2)
    redirect '/player_1_choice'
  end

  get '/two_player_names' do
    erb :two_player_names
  end

  post '/two_player_names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.init(player_1, player_2)
    redirect '/player_1_choice'
  end

  get '/player_1_choice' do
    @game = Game.instance
    erb :player_1_choice
  end

  post '/player_1_choice' do
    @game = Game.instance
    @game.player_1.add_move(params[:move])
    @mode = Mode.instance
    if @mode.game_mode == 'Single Player Mode' 
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
    @game.player_2.add_move(params[:move])
    redirect '/results'
  end

  get '/results' do
    @game = Game.instance
    erb :results
  end
end