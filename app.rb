require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  get "/" do
    erb(:sign_in)
  end

  post "/names" do
    $game = Game.new((params["Player 1"]), "Hal 9000" )
    redirect '/play'
  end

  get "/play" do
    @game = $game
    erb(:play)
  end

  post "/choice_rock" do
    @game = $game
    @game.player1.rock
    @game.player2.computer
    redirect '/confirm'
  end

  post "/choice_paper" do
    @game = $game
    @game.player1.paper
    @game.player2.computer
    redirect '/confirm'
  end

  post "/choice_scissors" do
    @game = $game
    @game.player1.scissors
    @game.player2.computer
    redirect '/confirm'
  end

  get "/confirm" do
    @game = $game
    erb(:confirm)
  end

  post "/check_winner" do
    @game = $game

    redirect '/result'
  end

  get "/result" do
    @game = $game
    if @game.win?
      erb(:winner)
    else
      erb(:loser)
    end
  end

end
