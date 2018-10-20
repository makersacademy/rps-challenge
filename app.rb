require 'sinatra/base'
require './lib/game'
require 'pry'
# require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  attr_reader :game

  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name]
    redirect '/play'
  end

  get "/play" do
    @game = Game.new
    @welcome_message = "Welcome, #{session[:name]}!"
    selection = session[:choice]
    @winner = @game.player_selection(selection) unless selection.nil?
    erb :play
  end

  post "/choice" do
    session[:choice] = params[:choice].to_sym
    erb :choice
  end

end
