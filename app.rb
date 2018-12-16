require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

    enable :sessions

    get '/' do
       "Rock, Paper, Scissors!"
       erb(:index)
    end

    post '/names' do
        $player = Player.new(params[:name])
        redirect '/play'
    end

    get '/play' do
        @player = $player
        @player_name = $player.name
        erb(:play)
    end

    post '/player_move' do
        $player_choice = (params[:choice])
        @player_choice = $player_choice
        redirect '/result'
    end

    get '/result' do
        @player = $player
        @player_choice = $player_choice

        $computer = Computer.new
        @computer = $computer
        @computer_choice = $computer.weapon

        @result = if @player_choice == :Rock && @computer_choice == :Scissors
            "You Win"
        elsif @player_choice == :Paper && @computer_choice == :Scissors
            "You Lose"
        elsif @player_choice == :Scissors && @computer_choice == :Paper
            "You Win"
        elsif @player_choice == :Rock && @computer_choice == :Paper
            "You Lose"
        elsif @player_choice == :Paper && @computer_choice == :Rock
            "You Win"
        elsif @player_choice == :Scissors && @computer_choice == :Rock
            "You Lose"
        else
            "It's a Draw"
        end

        #$game = Game.new(@player, @computer)
        #@game = $game
        #@game_result = $game.result

        erb(:result)
    end

end