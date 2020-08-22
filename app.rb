require 'sinatra/base'
require 'rspec'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base

    get '/' do
        erb(:index)
    end

    post '/players' do
        $player_1 = params[:player1]
        redirect '/play'
    end

    get '/play' do
        @player_1 = $player_1
        erb(:play)
    end

    post '/rock' do
        @player_1 = $player_1
        @computer = Computer.new
        @game = Game.new('Rock', @computer.computer_pick)
        @game.select_winner
        erb(:rock)
    end

    post '/scissors' do
        @player_1 = $player_1
        erb(:scissors)
    end

    post '/paper' do
        @player_1 = $player_1
        erb(:paper)
    end
end