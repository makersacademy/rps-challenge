require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p1 = Player.new(params[:p1_name])
    p params[:p2_name]
    params[:p2_name]=="" ? p2 = Computer.new : p2 = Player.new(params[:p2_name])
    $game = Game.new(p1, p2)
    redirect '/p1_selection'
  end

  get '/p1_selection' do
    @game = $game
    erb :p1_selection
  end

  post '/p1' do
    @p1 = $game.p1
    @p2 = $game.p2
    $game.select(@p1, params[:selection])
    redirect '/p2_selection' unless $game.singleplayer
    @p2.comp_choice
    $game.fight
    redirect '/results'
  end

  get '/p2_selection' do
    @game = $game
    erb :p2_selection
  end

  post '/p2' do
    @p2 = $game.p2
    $game.select(@p2, params[:selection])
    $game.fight
    redirect '/results'
  end

  get '/results' do
    @game = $game
    @round = @game.round_history.last
    erb :results
  end

run! if app_file == $0
end