
require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

get '/' do
  erb(:index)
end

post '/welcome' do
  p params
  # Game.new(params[:player_1_name]) << session[:game].inspect
  $new_game = Game.new(params[:player_1_name])
  erb(:names)
end

post '/play' do
  p params
  @new_game = $new_game
  erb(:play)
end

post '/comp_turn' do
  p params
  @new_game = $new_game
  @new_game.choose_weapon(params[:weapon_select])
  @new_game.computer_choose_weapon
  @new_game.who_wins
  erb(:computer)
end


post '/results' do
  p params
  @new_game = $new_game
  erb(:end_game)
end

# start the server if ruby file executed directly
run! if app_file == $0

end
