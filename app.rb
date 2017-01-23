require 'sinatra/base'
require 'tilt/erb'
require './lib/game_class'

class RPS < Sinatra::Base
  enable :sessions

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

# start the server if ruby file executed directly
  run! if app_file == $0
end
