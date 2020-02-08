require "sinatra/base"
require "./lib/game"
require "./lib/opponent"

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
    @game = Game.new(session)
    erb :play
  end

  post "/play" do
    session[:choice] = params[:choice].downcase.to_sym
    session[:opp_choice] = Opponent.new.choice
    redirect "/play"
  end
end
