require 'sinatra/base'
require './lib/game'
require './lib/user'
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
    session[:player_2_name] = params[:p2_name]
    redirect '/play' if session[:player_2_name] == ''
    redirect '/two-player-play'
  end

  get "/play" do
    @player_1 = User.new(session[:name])
    @player_2 = User.new('computer', true)
    @game = Game.new(@player_1, @player_2)

    selection = session[:choice]
    @winner = @game.player_selection(selection) unless selection.nil?
    erb :play
  end

  post "/choice" do
    session[:choice] = params[:choice].to_sym
    erb :choice
  end

  get '/two-player-play' do
    @player_1 = User.new(session[:name])
    @player_2 = User.new(session[:player_2_name])
    @game = Game.new(@player_1, @player_2)
    erb :two_player
  end

end
