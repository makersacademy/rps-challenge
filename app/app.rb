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
    @name = params[:name].downcase.split(" ").map(&:capitalize).join(" ")
    session[:name] = @name
    session[:wins] = 0
    session[:total] = 0
    @wins = 0 # session[:wins]
    @total = 0 # session[:total]
    erb(:game)
  end

  get "/game" do 
    session[:total] = session[:total].to_i + 1
    @name = session[:name]
    @wins = session[:wins]
    @total = session[:total]
    erb(:game)
  end

  post "/results" do
    @winner = session[:name]
    @winner_act = "rock"
    @loser_act = "scissors"
    @name = session[:name]
      redirect("/results_lost?wact=" << @winner_act << "&lact=" << @loser_act)
  end

  get "/results_won" do
    params[:name].nil? ? (@name = session[:name]) : (@name = params[:name])
    @first_act = params[:wact]
    @second_act = params[:lact]
    erb(:results_won)
  end

  get "/results_lost" do
    params[:name].nil? ? (@name = session[:name]) : (@name = params[:name])
    @first_act = params[:wact]
    @second_act = params[:lact]
    erb(:results_lost)
  end

  get "/results_draw" do
    params[:name].nil? ? (@name = session[:name]) : (@name = params[:name])
    @first_act = params[:wact]
    @second_act = params[:lact]
    erb(:results_draw)
  end

  run! if app_file ==$0
end
