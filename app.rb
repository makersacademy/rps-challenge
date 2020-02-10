require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RPS < Sinatra::Base
    enable :sessions

    get "/" do
        erb :index
    end

    post "/player_1_turn" do 
        $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
        session[:game] = $game
        erb :player_1_turn
    end

    post "/player_2_turn" do
        session[:player_1_move] = params[:submit_button]
        erb :player_2_turn
    end

    post "/winner" do
        session[:player_2_move] = params[:submit_button] 
        @winner = $game.decide_winner(session[:player_1_move], session[:player_2_move])
        erb :winner
    end

end
