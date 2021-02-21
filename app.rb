require 'sinatra/base'
require './lib/turn'
require './lib/opponent'

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
  erb :play
end

post '/play' do
  session[:player_move] = params[:move].downcase.to_sym
  session[:opponent_move] = Opponent.new.move
  redirect '/play'
end


run! if app_file == $0
end
