require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'
require_relative './lib/winner_helper'

class RPS < Sinatra::Base

    helpers WinnerHelper

    get '/' do
        erb :index
    end

    post '/name' do
        params[:player2] != "" ? @game = Game.create(params[:player1], params[:player2]) : Game.create(params[:player1])
        redirect '/game'
    end

    get '/game' do
        @game = Game.instance
        declare_winner(@game)
        erb :game
    end

    post '/move_p1' do
        @game = Game.instance
        @game.player1.move = params[:player1move]
        @game.player2.move = "" if @game.player2
        redirect '/game'
    end

    post '/move_p2' do
        @game = Game.instance
        @game.player2.move = params[:player2move]
        redirect '/game'
    end

   
end