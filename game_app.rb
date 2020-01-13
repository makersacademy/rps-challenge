require 'sinatra/base'
require './lib/player_name'
require './lib/rps_game'

class RockPaperScissors < Sinatra::Base

    enable :session

    get '/' do
       erb :rps_index 
    end

    post '/player_name' do
        @player_name = PlayerName.new(params[:player_name])
        p @player_name
        @computer = PlayerName.new("Computer")
        @game = RPSGame.create(@player_name, @computer)
        redirect '/play_game' 
    end

    before do
        @game = RPSGame.instance
    end

    get '/play_game' do
        @game
        erb :rps_play 
    end

    post '/rock' do
        @game
        @game.computer_option
        erb :rps_rock
    end

    post '/paper' do
        @game
        @game.computer_option
        erb :rps_paper
    end

    post '/scissors' do
        @game
        @game.computer_option
        erb :rps_scissors
    end


    # get '/pay'
    #     redirect '/play_game'
    # end

     


end