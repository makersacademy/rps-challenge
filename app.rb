require "sinatra/base"
require "./randomchoice.rb"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/entered"do
    session[:name] = params[:name]
    erb :entered
  end

  post "/response" do
    session[:chosen] = params[:chosen]
    player_choice = session[:chosen]
    round_of_RPS = RoundofRPS.new(player_choice)
    erb :chosen
    end
end
