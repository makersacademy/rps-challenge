# Our app.rb file is our controller file.
require './lib/turn.rb'
require './lib/opponent.rb'
require 'sinatra/base'
class RockPaperScissors < Sinatra::Base 
  enable :sessions
get '/' do 
  erb :index
end

post '/names' do 
  # @Your_name = params[:Your_name]
  session[:player_name] = params[:Your_name]
  redirect '/play'
end

get '/play' do
  @turn = Turn.new(session)
  # @Your_name = session[:Your_name]
  # @shape = session[:shape]
  # @opponents_move = session[:opponents_move]
  erb :play
end

post '/play' do
  session[:player_shape] = params[:shape].capitalize.to_sym
  session[:opponents_shape] = Opponent.new.shape
  redirect '/play'
end

run! if app_file == $0 
end 
