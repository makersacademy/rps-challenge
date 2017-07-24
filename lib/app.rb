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
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new("Computer")
    @game =
    Game.add(@player_1, @player_2 :one_player)
    redirect '/play'
  end

  post '/two-player' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game =
    Game.add(@player_1, @player_2 :two_player)
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
    erb @game.calc_winner
  end

  run! if app_file == $0
end
