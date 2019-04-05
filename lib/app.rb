require 'sinatra/base'
require_relative "./pc_player.rb"
require_relative "./result_checker.rb"


class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect("/play")
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end

  post "/check" do
    session[:selection] = params[:selection]
    session[:pc_selection] = PcPlayer.play
    session[:result] = ResultChecker.check(session[:selection], session[:pc_selection])
    redirect("/result")
  end

  get "/result" do
    @selection = session[:selection]
    @pc_selection = session[:pc_selection]
    @result = session[:result]
    @player_name = session[:player_name]
    erb :result
  end
end
