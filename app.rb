require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/opponent'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    @game = Game.create(Player.new(params[:player_name]), Opponent.new)
    redirect '/play_rps'
  end

  get '/play_rps' do
    @game = Game.instance
    erb :play_rps
  end

  post '/compare_weapon' do
    @game = Game.instance
    @game.opponent.make_weapon_choice
    @game.player.make_weapon_choice(params[:weapon_choice])
    redirect '/bout_result'
  end

  get '/bout_result' do
    @game = Game.instance
    if @game.outcome == :player_wins
      redirect '/bout_result_winner'
    elsif @game.outcome == :player_loses
      redirect '/bout_result_loser'
    else
      redirect '/bout_result_draw'
    end
  end

  get '/bout_result_winner' do
    @game = Game.instance
    erb :bout_result_winner
  end

  get '/bout_result_draw' do
    @game = Game.instance
    erb :bout_result_draw
  end

  get '/bout_result_loser' do
    @game = Game.instance
    erb :bout_result_loser
  end

run! if app_file == $0
end
