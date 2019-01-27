require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
    get '/' do
       erb (:homepage)
    end

enable :sessions

    post '/save-name' do
        session[:player1_name] = params[:player1_name]
        session[:player2_name] = params[:player2_name]
        redirect '/display-name'
    end

    get '/display-name' do

        player1 = Player.new(session[:player1_name])
        player2 = Player.new(session[:player2_name])
        $game = Game.new(player1, player2)
        erb (:pre_game)
    end

    post '/saves-choice' do
        session[:player1_move] = params[:player1_move]
        session[:player2_move] = params[:player2_move]
        redirect '/player-choice'
    end

    get '/player-choice' do
        $game.player1.select_move(session[:player1_move])
        $game.player2.select_move(session[:player2_move])
        erb (:player_choice)
    end

    get '/winner' do
        $game.determine_winner
        erb (:winner_decider)
      #  'You are the winner!'
    end

    run! if app_file == $0
end
