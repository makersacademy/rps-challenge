require './lib/game'
require './lib/player'
require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/one_player_sign_in' do
    erb(:one_player_sign_in)
  end

  get '/two_player_sign_in' do
    erb(:two_player_sign_in)
  end

  get '/invalid_name' do
    erb(:invalid_name)
  end

  post '/name' do
    @game = Game.create(player_1: params[:player_name])
    redirect to '/play'
  end

  post '/two_names' do
    redirect to '/invalid_name' if a_name_is_computer?
    @game = Game.create(player_1: params[:player_1_name],
      player_2: params[:player_2_name])
    redirect to '/play'
  end

  get '/play' do
    @game = Game.instance
    @game.player_1.reset_move
    @game.player_2.reset_move
    erb(:play)
  end

  get '/p2_play' do
    @game = Game.instance
    erb(:p2_play)
  end

  get '/end' do
    @game = Game.instance
    erb(:end)
  end

  post '/p1_choose_rock' do
    @game = Game.instance
    @game.player_1.choose_rock
    next_move
  end

  post '/p2_choose_rock' do
    @game = Game.instance
    @game.player_2.choose_rock
    redirect to '/end'
  end

  post '/p1_choose_paper' do
    @game = Game.instance
    @game.player_1.choose_paper
    next_move
  end

  post '/p2_choose_paper' do
    @game = Game.instance
    @game.player_2.choose_paper
    redirect to '/end'
  end

  post '/p1_choose_scissors' do
    @game = Game.instance
    @game.player_1.choose_scissors
    next_move
  end

  post '/p2_choose_scissors' do
    @game = Game.instance
    @game.player_2.choose_scissors
    redirect to '/end'
  end

  private
  def a_name_is_computer?
    params[:player_1_name] == "Computer" || params[:player_2_name] == "Computer"
  end

  def next_move
    @game.player_2.choose_random if @game.player_2.computer?
    redirect to '/end' unless @game.player_2.move.nil?
    redirect to '/p2_play' if @game.player_2.move.nil?
  end
end
