require 'sinatra/base'
require_relative './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @name = Game.instance.name
    erb :play
  end

  post '/rock' do
    Game.instance.player_choice = :Rock
    redirect '/game_over'
  end

  post '/paper' do
    Game.instance.player_choice = :Paper
    redirect '/game_over'
  end

  post '/scissors' do
    Game.instance.player_choice = :Scissors
    redirect '/game_over'
  end

  get '/game_over' do
    @player_choice = Game.instance.player_choice
    @opponent_choice = Game.instance.random_choice
    @win_or_lose = Game.instance.winner?
    @total_wins = Game.instance.total_wins
    @total_draws = Game.instance.total_draws
    @total_losses = Game.instance.total_losses
    erb :game_over
  end

  run! if app_file == $0
end