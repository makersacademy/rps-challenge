require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  get "/" do

    erb(:index)

  end

  post "/register" do
    @game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))

    session[:game] = @game


    redirect "/play"

  end

  get "/play" do
    @game = session[:game]
    @player1_selection = ""
    @player2_selection = ""
    @winning_message = ""

    erb(:play)

  end

  post "/play" do

    @game = session[:game]


    @game.player1.choose_weapon(params[:player_1_weapon].to_sym)
    @game.player2.choose_weapon(params[:player_2_weapon].to_sym)
    @player1_selection = "#{@game.player1.name} selected #{@game.player1.weapon}"
    @player2_selection = "#{@game.player2.name} selected #{@game.player2.weapon}"
    @game.play
    @winning_message = @game.winner == nil ? "It's a draw" : "#{@game.winner.name} wins!"
    erb(:play)

  end



  run! if app_file == $0
end
