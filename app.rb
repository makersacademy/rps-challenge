require "sinatra/base"
require "sinatra/reloader"
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Rts < Sinatra::Base
  enable :sessions
  $game = Game.new

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    $game.reset_wins
    @@multiplayer = nil
    erb :nameinput
  end

  post '/names' do
    $game.set_name(params["name"])
    redirect '/multi?'
  end

  get '/multi?' do
    erb :output_multi
  end

  post '/soloredirect' do
    if params["Multiplayer?"] == "Solo"
      @@multiplayer = false
      redirect '/play'
    elsif params["Multiplayer?"] == "Multiplayer"
      $game.set_name($game.player1.name, params["name"])
      @@multiplayer = true
      redirect 'play'
    end
  end

  get '/play' do
    erb :throwinput
  end

  post '/output' do
    if @@multiplayer == false
      $game.computer_choice
      $game.thrown_hands(params["Option to throw"])
      redirect '/solo-end'
    elsif @@multiplayer == true
      $game.player1.thrown_hand(params["Option to throw"])
      erb :second_player_choice
    end
  end

  get '/solo-end' do
    erb :output
  end

  post '/multi-output' do
    $game.player2.thrown_hand(params["Option to throw"])
    erb :output
  end

end