require 'sinatra'
require './lib/game'
require './lib/bot'
require './lib/player'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do 
    erb :index
  end

  post "/name" do
    name = params[:name]
    @game = Game.create(name)

    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/deciding" do
    
    if @game.bot.move == 'scissors' && @game.player.move == 'rock'
      redirect "/win"
    else
      erb :index
    end
  end

  get "/win" do
    @game = Game.instance
    erb :win
  end

  run! if app_file == $0
end