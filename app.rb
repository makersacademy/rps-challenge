require 'sinatra/base'
require 'pry'
require './lib/game'
require './lib/result'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/entered_name" do
    @game = Game.create(Player.new(params[:player1]))
    redirect '/in_game'
  end

  get "/in_game" do
    erb(:in_game)
  end

  post "/conflict" do
    @game.player1.assign_choice(params[:choice])
    @game.player2.generate_choice
    redirect '/result'
  end

  get "/result" do
    @winner = Result.new.outcome(@game.player1, @game.player2)
    redirect '/in_game' if @winner == "Draw"
    erb(:result)
  end

  run! if app_file == $0
end
