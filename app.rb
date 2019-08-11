require 'sinatra/base'
require 'capybara'
require 'selenium-webdriver'
require_relative './lib/game'

class RPS < Sinatra::Base
  get '/home' do
    erb(:welcome)
  end

  get '/register' do
    erb(:register)
  end

  post '/game' do
    $game = Game.new(params[:player_name])
    redirect '/game/play'
  end

  get '/game/play' do
    @p1_name = $game.p1_name
    erb(:game_play)
  end

  post '/process' do
    $game.user_move = params[:move].to_i
    $game.get_result
    redirect '/result'
  end

  get '/result' do
    @user_move = $game.user_move
    @npc_move = $game.npc_move
    @user_move_converted = $game.converter(@user_move)
    @npc_move_converted = $game.converter(@npc_move)
    @result = $game.result
    erb(:result)
  end



  run! if app_file == $0
end
