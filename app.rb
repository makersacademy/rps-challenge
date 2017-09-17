require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post "/names" do
  $player = Player.new(params[:player_name])
  $game = Game.new(@player)
  redirect '/play'
end

get '/play' do
  @game = $game
  erb :play
end

run! if app_file == $0
end
