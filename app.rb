require "sinatra/base"
require "./lib/game.rb"
require "./lib/player.rb"

class Rpsgame < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/hold" do
    session[:player_1] = Player.new(params[:player_1],"options")
    session[:player_2] = Player.new("computer","options")
    session[:game] = Game.create(session[:player_1], session[:player_2])
    redirect "/interim"
  end

  get "/interim" do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @game = session[:game]
    erb :hold
  end

  post "/game" do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1.options = params[:options]
    @player_2.options = @game.player_2.generate_choice
    @game = session[:game]
    redirect "/result"
  end

  get "/result" do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @game = session[:game]
    erb :game
  end

  run! if app_file == $0
end
