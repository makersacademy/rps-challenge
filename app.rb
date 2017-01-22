require 'sinatra'
require 'shotgun'
require './lib/game_class'
#shotgun app.rb -p 4567
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
  if choice == 'x'
    @result = 'u chose x'
  else
    @current_game = Game.new(choice)
    @result = @current_game.decider
    erb :decide
  end
end
