require "sinatra/base"
require "geocoder"
require_relative "./lib/game"

class RPS < Sinatra::Base
enable :sessions

get '/' do
  erb(:splash)
end

get '/welcome' do
  erb(:index)
end

post '/names' do
  session[:p1name] = params[:p1name]
  redirect '/play'
end

get '/play' do
  $game = Game.new(Player.new(session[:p1name]))
  $game
  erb(:play)
end

get '/rock' do
  $game.player.player_move("Rock")
  redirect '/result'
end

get '/paper' do
  $game.player.player_move("Paper")
  redirect '/result'
end

get '/scissors' do
  $game.player.player_move("Scissors")
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

post '/goodbye' do
  $game
  erb(:goodbye)
end

post '/troll' do 
  $game
  @name = $game.player.name
  redirect "https://www.google.com/search?ei=M79LXIOhHIK61fAP5auBuAc&q=Hi%2C+My+Name+Is+""#{@name}""+And+I+Am+A+Buzzkill"
end

# start the server if ruby file executed directly
run! if app_file == $0
end