require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before do 
    @game = Game.instance
    @player_1 = Player.instance
    @player_2 = Player.instance
  end

  get '/' do 
    erb :index
  end
  
  #single player pages

  get '/single_player' do
    @player_1 = Player.create(params[:player_1_name])
    @player_2 = Player.create('CPU')
    @game = Game.create(@player_1, @player_2)
    erb :play
  end

  get '/result' do 
    @game.make_move(params[:move])
    @game.switch_turns
    @game.make_move(['Rock', 'Paper', 'Scissors'].sample)
    if @game.tie?
      redirect '/tie'
    else
      redirect '/win'
    end
  end

  get '/win' do 
    erb :win
  end

  get '/tie' do 
    erb :tie
  end

  #multiplayer pages
  get '/player_2_name' do
    @player_1 = Player.create(params[:player_1_name])
    erb :player_2_name
  end

  get '/multiplayer' do
    @player_2 = Player.create(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/in_game_multi'
  end

  get '/in_game_multi' do
    erb :play_multi
  end

  get '/next_move' do 
    @game.make_move(params[:move])
    @game.switch_turns
    unless @game.complete?
      redirect '/in_game_multi'
    else
      redirect '/result_multi'
    end
  end
  
  get '/result_multi' do
    if @game.tie?
      redirect '/tie'
    else
      redirect '/win'
    end
  end

  run! if app_file == $0

end

