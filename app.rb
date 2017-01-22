require 'sinatra'
require 'shotgun'
require './lib/game_class'
set :session_1, 'first session'

get '/' do
  erb :index
end

post '/name' do
  @player = params[:your_name]
  erb :play
end

post '/decide' do
  choice = params[:your_move]
  @current_game = Game.new(choice)
  @result = @current_game.decider
  erb :decide
end
