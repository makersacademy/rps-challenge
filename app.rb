require 'sinatra/base'
require 'rspec'
require './lib/computer'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
    
    before do 
        @computer = Computer.new
        @player_1 = Player.instance
    end

    get '/' do
        erb(:index)
    end

    post '/players' do
        @player_1 = Player.create(params[:player1])
       
        redirect '/play'
    end

    get '/play' do
       # @player_1 = $player_1
        erb(:play)
    end

    post '/rock' do
       # @player_1 = $player_1
        #@computer = Computer.new
        @game = Game.new('Rock', @computer.computer_pick)  
        erb(:rock)
    end

    post '/scissors' do
      #  @player_1 = $player_1
      #  @computer = Computer.new
        @game = Game.new('Scissors', @computer.computer_pick)
        erb(:scissors)
    end

    post '/paper' do
       # @player_1 = $player_1
       # @computer = Computer.new
        @game = Game.new('Paper', @computer.computer_pick)
        erb(:paper)
    end
end