require 'sinatra/base'
require './lib/game'
require './lib/game_multiple'

class RPS < Sinatra::Base

  get '/' do
    erb :multiple_players
  end

  get '/one-player' do
    erb :index
  end

  get '/two-player' do
    erb :index_multiple
  end

  post '/winners' do
    @player_1_name = params[:player_1_name]
    @choice = params[:choice]
    @game = Game.new(@choice, @player_1_name)
    @game.compare
    erb :winners
  end

  post '/winners-2' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    @choice = params[:choice]
    @choice2 = params[:choice_2]
    @gamemultiple = Gamemultiple.new(@choice, @choice2, @player_1_name, @player_2_name)
    @gamemultiple.compare
    erb :winners_multiple
  end
=begin
I want to use the params from one page on another page but can't make that work
=end

=begin
I want to make the images embedded in my local site but they weren't showing up. Not sure why.
=end
  
end
