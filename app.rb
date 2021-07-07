require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

    enable :sessions

    get '/' do
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

        #$game = Game.new(@player, @computer)
        #@game = $game
        #@game_result = $game.result

        erb(:result)
    end

end