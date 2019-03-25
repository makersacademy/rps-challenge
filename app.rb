require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :how_many_players
  end

  post '/choose-players' do
    redirect @params["players"] == 'one_player' ?
      '/register-one-player' :
      '/register-two-players'
  end

  get '/register-one-player' do
    erb :register_one_player
  end

  get '/register-two-players' do
    erb :register_two_players
  end

  # is it a good idea to handle two situations here in one route?
  # or would it be better to split these out? splitting it into
  # two routes seems messier
  post '/start-game' do
    if params['computer_opponent'] == 'true'
      Game.create(params['player1_name'])
    else
      Game.create(params['player1_name'], params['player2_name'])
    end
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choose' do
    @game.current_player.choose(params['choice'])
    @game.next_turn

    if @game.turn >= 2
      redirect '/result'
    elsif @game.current_player.computer?
      @game.current_player.choose_random(3)
      redirect '/result'
    else
      redirect '/play'
    end
  end

  get '/result' do
    erb :result
  end

  get '/play-again' do
    @game.reset
    redirect '/play'
  end

end
