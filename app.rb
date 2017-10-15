require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  post '/twonames' do
    Game.new_game(Player.new(params[:p1_name]), Player.new(params[:p2_name]))
    redirect '/play'
  end

  post '/onename' do
    Game.new_game(Player.new(params[:p1_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    Game.current.current_player.choose(params[:weapon])
    Game.current.next_player
    if Game.current.ask_second
      Game.current.ask_second = false
      redirect '/play'
    else
      Game.current.current_player.choose if !Game.current.multiplayer_mode
    end
    Game.current.play
    Game.current.soft_reset
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

run! if app_file == $0
end
