require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

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

  # is it a good idea it handle two situations here in one route?
  # or would it be better to split these out? splitting it into
  # two routes seems messier
  post '/start-game' do
    if params['computer_opponent'] == 'true'
      Game.create(params['player1_name'])
    else
      Game.create(params['player1_name'], params['player2_name'])
    end
    redirect '/player-1'
  end
  
  get '/player-1' do
    @warning = @game.players[1].computer? ? "" : "#{@game.players[1].name}, look away"
    erb :player_1
  end

  post '/choose-1' do
    @game.players[0].choose(params['choice'].to_i)

    if @game.players[1].computer?
      @game.players[1].choose_random(3)
      redirect '/result'
    else
      redirect '/player-2'
    end
  end

  get '/player-2' do
    @warning = "#{@game.players[0].name}, look away"
    erb :player_2
  end

  post '/choose-2' do
    @game.players[1].choose(params['choice'].to_i)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
