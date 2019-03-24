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

  post '/save-names' do
    if params['computer_opponent'] == 'true'
      Game.create(params['player1_name'])
    else
      Game.create(params['player1_name'], params['player2_name'])
    end
    redirect '/player-1'
  end
  
  get '/player-1' do
    @warning = @game.player2.computer? ? "" : "#{@game.player2.name}, look away"
    erb :player_1
  end

  post '/choose-1' do
    @game.player1.choose(params['choice'].to_i)

    if @game.player2.computer?
      @game.player2.choose_random(3)
      redirect '/result'
    else
      redirect '/player-2'
    end
  end

  get '/player-2' do
    @warning = "#{@game.player1.name}, look away"
    erb :player_2
  end

  post '/choose-2' do
    @game.player2.choose(params['choice'].to_i)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
