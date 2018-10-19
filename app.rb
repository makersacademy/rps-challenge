require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPSGame < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1_name])
    Game.new(player_1)
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/rock" do
    case Game.play(:rock)
    when :win
      redirect "/win"
    when :draw
      redirect "/draw"
    when :lose
      redirect "/lose"
    end
  end

  post "/paper" do
    case Game.play(:paper)
    when :win
      redirect "/win"
    when :draw
      redirect "/draw"
    when :lose
      redirect "/lose"
    end
  end

  post "/scissors" do
    case Game.play(:scissors)
    when :win
      redirect "/win"
    when :draw
      redirect "/draw"
    when :lose
      redirect "/lose"
    end
  end

  get "/win" do
    erb :win
  end

  get "/draw" do
    erb :draw
  end

  get "/lose" do
    erb :lose
  end
end
