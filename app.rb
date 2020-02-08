require "sinatra/base"
require "./lib/game"
require "./lib/player"
require "./lib/turn"


class RPSgame < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/play"
  end

  get "/play" do
    @turn = Turn.new(session)
    erb :play
  end

  post "/play" do
    session[:choice] = params[:choice]
    session[:opp_choice] = :rock
    redirect "/play"
  end
end
