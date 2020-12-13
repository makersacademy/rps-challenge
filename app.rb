require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'

class RPS < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:home)
    end
    
    get '/play' do
        $game = Game.new(Player.new(params[:name]), Computer.new)
        erb(:play)
    end

    get '/result' do
        $game.player.choose(params[:choice])
        $game.who_wins
        erb(:result)
    end
end