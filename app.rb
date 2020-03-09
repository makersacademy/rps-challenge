require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/name' do

        params[:player2] != "" ? @game = Game.create(params[:player1], params[:player2]) : Game.create(params[:player1])
        
        redirect '/game'
    end

    get '/game' do
        @game = Game.instance
        @player1 = @game.player1
        @game.player2 != nil ? @player2 = @game.player2 : @computer = @game.computer
        

        if @player1.move != nil && @game.player2 == nil
            @computer_move =  @computer.move
            @winner = @game.declare_winner(@player1.move, @computer_move)
        elsif @player1.move != nil && @player2.move != nil
            @winner = @game.declare_winner(@player1.move, @player2.move)
        end

        erb :game
    end

    post '/move_p1' do
        @game = Game.instance
        p params[:player1move]
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