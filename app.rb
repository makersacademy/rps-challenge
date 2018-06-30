require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/bot'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/computer-mode' do
    erb(:computer_mode)
  end

  post '/PvC' do
    player = Player.new(params[:player])
    player2 = Bot.new('Computer')
    $game = Game.new(player, player2)
    redirect '/round'
  end

  get '/round' do
    erb(:round)
  end

  post '/PvC_option' do
    $player_option = $game.player.choose_option(params[:option])
    $player2_option = $game.player2.random_option
    redirect '/result'
  end

  get '/multiplayer-mode' do
    erb(:multiplayer_mode)
  end

  post '/PvP' do
    player = Player.new(params[:player])
    player2 = Player.new(params[:player2])
    $game = Game.new(player, player2)
    redirect '/round_p1'
  end

  get '/round_p1' do
    erb(:round_p1)
  end

  post '/PvP_option' do
    $player_option = $game.player.choose_option(params[:option])
    redirect '/round_p2'
  end

  get '/round_p2' do
    erb(:round_p2)
  end

  post '/PvP_option2' do
    $player2_option = $game.player2.choose_option(params[:option])
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
