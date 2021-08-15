require 'sinatra'
require 'sinatra/reloader'


class RPS < Sinatra::Base
  configure :developer do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb(:index)
  end

  post "/game" do
    @user = params[:name].downcase.split(" ").map(&:capitalize).join(" ")
    session[:name] = @user
    session[:wins] = 0
    session[:total] = 0
    @wins = 0 # session[:wins]
    @total = 0 # session[:total]
    erb(:game)
  end

  get "/game" do 
    session[:total] = session[:total].to_i + 1
    @user = session[:name]
    @wins = session[:wins]
    @total = session[:total]
    erb(:game)
  end

  post "/results" do
    @winner = "Radu"
    @winner_act = "rock"
    @loser_act = "scissors"
    redirect("/results?winner=" << @winner << "&wact=" << @winner_act << "&lact=" << @loser_act)
  end

  get "/results" do
    @winner = params[:winner]
    @winner_act = params[:wact]
    @loser_act = params[:lact]
    erb(:results)
  end

  run! if app_file ==$0
end
