require 'sinatra/base'
require_relative 'lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/setup' do
     params[:two_player] ? (erb :names) : (erb :name)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @name = Game.instance.name
    erb :play
  end

  post '/names' do
    @game = Game.create(params[:player_name_one], params[:player_name_two])
    redirect '/multiplay'
  end

  get '/multiplay' do
    @name = Game.instance.name
    @name_two = Game.instance.name_two
    erb :multiplay
  end

  post '/choice' do
    if params[:Rock]
      object = params[:Rock]
    elsif  params[:Paper]
      object = params[:Paper]
    else
      object = params[:Scissors]
    end

    if (Game.instance.player_one_selection == nil) && (Game.instance.name_two == "NA")
      Game.instance.human_select(object)
      erb :result
    elsif Game.instance.player_one_selection == nil
      Game.instance.human_select(object)
      @name_two = Game.instance.name_two
      erb :player_two
    else
      Game.instance.player_two_select(object)
      redirect '/end-game'
    end
  end

  get '/gameover' do
    Game.instance.computer_select
    Game.instance.calculate_winner
    erb :game_over
  end

  get '/end-game' do
    Game.instance.calculate_winner_multiplayer
    erb :end_game
  end

  get '/result' do
    erb :result
  end

  get '/player-two' do
    erb :player_two
  end

  run! if app_file == $0

end
