require "sinatra/base"
require "./lib/game"
require "./lib/multigame"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get "/" do
    erb :index
  end
  get "/singleplayer" do
    erb :singleplayer
  end
  get "/multiplayer" do
    erb :multiplayer
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/singlegame"
  end

  post "/names" do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect "/multigame"
  end

  get "/singlegame" do
    @name = session[:name]
    erb :singlegame
  end

  get "/multigame" do
    @name_1 = session[:name_1]
    erb :player_1
  end

  post "/checkresult" do
    session[:choice] = params[:choice]
    $newgame = Game.new(session[:choice])
    redirect "/result"
  end

  post "/player_1_turn" do
    session[:choice_1] = params[:choice_1]
    $multigame = MultiGame.new(session[:choice_1], session[:choice_2])
    redirect "/player_2"
  end

  get "/player_2" do
    @name_2 = session[:name_2]
    erb :player_2
  end

  post "/player_2_turn" do
    session[:choice_2] = params[:choice_2]
    # update the game with the 2 choices
    p $multigame = MultiGame.new(session[:choice_1], session[:choice_2])
    redirect "/results"
  end

  get "/result" do
    function_singlegame
    erb :result
  end

  get "/results" do
    function_multigame
    erb :results
  end

  def function_singlegame
    @choice = $newgame.selected
    @computer = $newgame.random
    @result = $newgame.playing
  end

  def function_multigame
    @p1 = $multigame.p1_selected
    @p2 = $multigame.p2_selected
    @results = $multigame.playing
  end
end
