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
    @player_1 = User.new(session[:name])
    @game = Game.new(@player_1)
    @welcome_message = "Welcome, #{@player_1.name}!"
    selection = session[:choice]
    @winner = @game.player_selection(selection) unless selection.nil?
    erb :play
  end

  post "/choice" do
    session[:choice] = params[:choice].to_sym
    erb :choice
  end

end
