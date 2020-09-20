require 'sinatra'
require './lib/game'
require './lib/bot'
require './lib/player'

class Rps < Sinatra::Base

  get '/' do 
    erb :index
  end

  post "/name" do
    name = params[:name]
    @game = Game.create(name)

    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    erb :play
  end

  get "/deciding" do
    @game = Game.instance  
    bot_move = @game.bot.move
    player_move = @game.player.move(params[:selection])

    if @game.player_wins?(player_move, bot_move)
      redirect "/win"
    elsif player_move == bot_move
      redirect "/draw"
    elsif @game.player_loses?(player_move, bot_move)
      redirect "/lose"
    else
      redirect "/no_selection"
    end
  end

  get "/win" do
    @game = Game.instance  
    erb :win
  end

  get "/lose" do
    @game = Game.instance  
    erb :lose
  end

  get "/draw" do 
    @game = Game.instance 
    erb :draw
  end

  get "/no_selection" do 
    @game = Game.instance 
    erb :no_selection
  end

  run! if app_file == $0
end