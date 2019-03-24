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
    redirect @params["players"] == 'one_player' ? '/one-player' : '/two-players'
  end

  get '/one-player' do
    erb :one_player
  end

  get '/two-players' do
    erb :two_players
  end

  post '/save-names-1' do
    game = Game.create(params['player1_name'], "RPSBot::9000")
    game.player2.set_computer
    redirect '/player-1'
  end

  post '/save-names-2' do
    Game.create(params['player1_name'], params['player2_name'])
    redirect '/player-1'
  end

  post '/enter-name' do
    Game.create(params['player1_name'], "T-800")
    redirect '/play'
  end

  get '/player-1' do
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
    erb :player_2
  end

  get '/result' do
    erb :result
  end

end
