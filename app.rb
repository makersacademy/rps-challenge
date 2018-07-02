require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

before do
  @game = Game.instance
end

get '/' do
  erb :index
end

post '/names' do
  player = params[:player_name]
  @game = Game.create(player)
  redirect '/play'
end

get '/play' do
  # @game = $game
  erb :play
end

post '/attack' do
  if params[:name] == "rock"
    @game.rock
    @game.opponent_hand
  elsif params[:name] == "paper"
    @game.paper
    @game.opponent_hand
  elsif params[:name] == "scissors"
    @game.scissors
    @game.opponent_hand
  end

  if @game.winner?
    erb :you_win
  else
    erb :you_lose
  end

end

run if app_file == $0
end
