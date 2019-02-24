require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSWeb < Sinatra::Base


  get "/" do
    erb(:select_mode)
  end

  get "/register" do
     @play_mode = params[:play_mode]

     if @play_mode == "solo"
       erb(:solo_details)
     else
       erb(:multi_details)
     end
  end

  post "/register" do

    @game = Game.create(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    @player1_selection = ""
    @player2_selection = ""
    @winning_message = ""
    @input_missing_message = ""
    erb(:play)
  end

  post "/play" do

    @game = Game.instance

    if !params.keys.include?("player_1_weapon") or !params.keys.include?("player_2_weapon")
      @input_missing_message = "Both players must select a weapon each to play. Please try again"

    else

      @game.player1.choose_weapon(params[:player_1_weapon].to_sym)
      @game.player2.choose_weapon(params[:player_2_weapon].to_sym)
      @player1_selection = "#{@game.player1.name} selected #{@game.player1.weapon}"
      @player2_selection = "#{@game.player2.name} selected #{@game.player2.weapon}"
      @game.play
      @winning_message = @game.winner == nil ? "It's a draw" : "#{@game.winner.name} wins!"
    end

    erb(:play)
  end

  run! if app_file == $0
end
