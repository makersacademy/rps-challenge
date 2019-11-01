require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
    
    enable :sessions

    get '/' do
        erb(:home)
    end

    post '/enter-name' do
        session[:name] = params[:name]
        redirect('/play')
    end

    get '/play' do 
        @name = session[:name]
        erb(:game)
    end

    post '/take_go' do 
        session[:player_move] = params[:go_choice]
        session[:computer_move] = ["rock", "paper", "scissors"].sample
        redirect('/result')
    end

    get '/result' do 
        @player_move = session[:player_move]
        @computer_move = session[:computer_move]
        if player_rock_win? || player_paper_win? || player_scissors_win?
            @result = "Player"
        elsif computer_rock_win? || computer_rock_win? || computer_rock_win?
            @result = "Computer"
        else
            @result = "Draw"
        end
        @result = 
        erb(:result)
    end


    def player_rock_win?
        @player_move == "rock" && @computer_move == "scissors"
    end

    def player_paper_win?
        @player_move == "paper" && @computer_move == "rock"
    end

    def player_scissors_win?
        @player_move == "scissors" && @computer_move == "paper"
    end

    def computer_rock_win?
        @computer_move == "rock" && @player_move == "scissors"
    end

    def computer_paper_win?
        @computer_move == "paper" && @player_move == "rock"
    end

    def computer_scissors_win?
        @computer_move == "scissors" && @player_move == "paper"
    end
end