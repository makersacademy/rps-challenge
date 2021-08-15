require 'sinatra'
require 'sinatra/reloader'
require './lib/game.rb'


class RPS < Sinatra::Base
  configure :developer do
    register Sinatra::Reloader
  end
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post "/game" do
    session[:name] = params[:name].downcase.split(" ").map(&:capitalize).join(" ")
    session[:total] = 0
    session[:score] = 0
    @name = session[:name]
    @wins = session[:score] 
    @total = session[:total]
    erb(:game)
  end

  get "/game" do 
    session[:total] = session[:total].to_i + 1
    @name = session[:name]
    @wins = session[:score]
    @total = session[:total]
    erb(:game)
  end

  post "/results" do
    @name = session[:name]
    @game = Game.new(params[:name])
    @game.player1.set_option(params[:option].to_sym)
    @game.player2.set_option
    @result = @game.results_setup
    
    case @result
    when :win
        session[:score] = session[:score].to_i + 1
        redirect("/results_won?wact=" << @game.player1.option.to_s << "&lact=" << @game.player2.option.to_s)
    when :lose
        redirect("/results_lost?wact=" << @game.player1.option.to_s << "&lact=" << @game.player2.option.to_s)
    when :draw
        redirect("/results_draw?wact=" << @game.player1.option.to_s << "&lact=" << @game.player2.option.to_s)
    else
        @error = true
        redirect("/game")
    end
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
