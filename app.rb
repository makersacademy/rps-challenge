require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player
  end


  get '/multi_player' do
    erb :multi_player
  end

  post '/name' do
    Game.start(params[:player_name], nil)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    @name = @game.player.name
    erb :play
  end

  post '/name_multi' do
    Game.start(params[:player_name], params[:player_2])
    redirect '/play_multi'
  end

  get '/play_multi' do
    @game = Game.current_game
    @name_1 = @game.player.name
    @name_2 = @game.player_2.name
    erb :play_multi
  end

  get '/attack' do
    @game = Game.current_game
    @attack = params[:attack]
    @game.single_player? ? @game.player.store_attack(@attack) : @game.player_2.store_attack(@attack)
    @attack = @game.player.last_move? unless @game.single_player?
    @player_1 = @game.player.name
    @game.single_player? ? (@player_2 = "Your opponent") : (@player_2 = @game.player_2.name)
    @game.single_player? ? (@return_attack = @game.attack) : (@return_attack = @game.player_2.last_move?)
    @outcome = @game.outcome
    erb :attack
  end

  get '/first_attack' do
    @game = Game.current_game
    @attack = params[:attack]
    @name_1 = @game.player.name
    @name_2 = @game.player_2.name
    @game.player.store_attack(@attack)
    erb :first_attack
  end

  run! if app_file == $0
end
