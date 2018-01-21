require 'sinatra/base'
require "./lib/game"

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.current
  end

  get "/" do
    erb :index
  end

  post "/play" do
    Game.create(params["Enter name"])
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/result" do
    @player_choice = params["attack"]
    @comp_choice = @game.choice
    @winner = @game.winner(@player_choice, @comp_choice)
    erb :result
  end

  run! if app_file == $0

end
