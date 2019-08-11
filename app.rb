require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rock < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_one = Player.new(params[:player_1_name])
    $game = Game.new(player_one)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rock' do
    @game = $game
    @game.player_one_answer = "Rock"
    @game.results
    redirect '/results'
  end

  post '/paper' do
    @game = $game
    @game.player_one_answer = "Paper"
    @game.results
    redirect '/results'
  end

  post '/scissors' do
    @game = $game
    @game.player_one_answer = "Scissors"
    @game.results
    redirect '/results'
  end

  post '/lizard' do
    @game = $game
    @game.player_one_answer = "Lizard"
    @game.results
    redirect '/results'
  end

  post '/spock' do
    @game = $game
    @game.player_one_answer = "Spock"
    @game.results
    redirect '/results'
  end

  get '/results' do
    @game = $game
    erb :results
  end

  run! if app_file == $0
end
