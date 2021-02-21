require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

get '/' do
  erb :index
end

post '/names' do
  session[:player_name] = params[:player_1_name]
  redirect '/play'
end

get '/play' do
  @turn = Turn.new(session)

  # @name = session[:player_1_name]
  # @move = session[:move]
  # @opponent_move = session[:opponent_move]
  erb :play
end

post '/play' do
  session[:player_move] = params[:move]
  session[:opponent_move] = Opponent.new.move
  redirect '/play'
end

# Opponent.new.move

run! if app_file == $0
end
