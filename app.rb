require "sinatra/base"
require_relative "./lib/game"

class RPS < Sinatra::Base
enable :sessions


get '/' do
  erb(:index)
end

post '/names' do
  session[:p1name] = params[:p1name]
  redirect '/play'
end

get '/play' do
  $game = Game.new(Player.new(session[:p1name]))
  erb(:play)
end

post '/move1' do 
  $game.player.player_move(params[:move])
  redirect '/result'
end

get '/result' do
  $game.run_game
  erb(:result)
end

post '/cont_play' do
  $game
  erb(:play)
end


# start the server if ruby file executed directly
run! if app_file == $0
end