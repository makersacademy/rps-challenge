require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  $game = Game.new
  get '/' do
    erb(:index)
  end

  post '/startup-game' do

    $game.add_player(Player.new(params[:user_name]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
      @results = {
        0  => "It's a draw",
        1 => "#{$game.playername} wins",
        2 => "AI Wins"
      }
    erb(:result)
  end

  post '/move-handler' do
    $game.move = params[:move]
    redirect '/result'
  end

  run! if app_file == $0

end
