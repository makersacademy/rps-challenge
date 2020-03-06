require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/name' do
        $game = Game.new(params[:player1])
        redirect '/game'
    end

    get '/game' do
        @player1 = $game.player1
        @computer = $game.computer
        erb :game
    end

    post '/move' do
        p params[:player1move]
        $game.player1.move = params[:player1move]
        redirect '/game'
    end

end