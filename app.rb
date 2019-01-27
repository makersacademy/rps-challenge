require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base
    get '/' do
       erb (:homepage)
    end

enable :sessions

    post '/save-name' do
        session[:player1_name] = params[:player1_name]
        redirect '/display-name'
    end

    get '/display-name' do

        player1 = Player.new(session[:player1_name])
        computer = Computer.new
        $game = Game.new(player1, computer)
        erb (:pre_game)
    end

    post '/saves-choice' do
        session[:player1_move] = params[:player1_move]
        redirect '/player-choice'
    end

    get '/player-choice' do
        $game.player1.select_move(session[:player1_move])
        erb (:player_choice)
    end

    get '/winner' do
        $game.determine_winner
        erb (:winner_decider)
      #  'You are the winner!'
    end

    run! if app_file == $0
end
