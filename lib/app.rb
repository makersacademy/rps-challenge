require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :homepage
  end

  post '/mode' do
    session[:play_mode] = params[:play_mode]
    redirect '/enter-name'
  end

  get '/enter-name' do
    @play_mode = session[:play_mode]
    erb :enter_name
  end

  post '/one-player' do
    @game =
    Game.add((Player.new(params[:player_1_name])), (Player.new("Computer")), :one_player)
    redirect '/play'
  end

  post '/two-player' do
    @game =
    Game.add((Player.new(params[:player_1_name])), (Player.new(params[:player_2_name])), :two_player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/switch-turns' do
    @game.current_player.choose_move(params[:move])
    @game.switch_turns
    redirect '/play'
  end

  post '/battle-analysis' do
    if params[:move] == "Continue"
      @game.current_player.computer_move
    else
      @game.current_player.choose_move(params[:move])
    end
    redirect '/winner-declared'
  end

  get '/winner-declared' do
    @game.calc_winner
    erb :result
  end

  run! if app_file == $0
end
