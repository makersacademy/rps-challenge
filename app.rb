
require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  attr_accessor :weapon
  enable :sessions

  get '/' do
  erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :weapon_choice
  end

  post '/choice' do
    @weapon = params[:weapon].to_s
    $game = Game.new(@weapon)
      if $game.winner_is == "computer"
        erb :lose
      elsif $game.winner_is == "player"
        erb :win
      else
        erb :tie
      end
  end



end
