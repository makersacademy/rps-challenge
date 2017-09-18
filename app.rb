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

post '/rock' do
  @computer = ["Rock", "Paper", "Scissors"].sample
  erb :rock
end

post '/scissors' do
  @computer = ["Rock", "Paper", "Scissors"].sample
  erb :scissors
end

post '/paper' do
  @computer = ["Rock", "Paper", "Scissors"].sample
  erb :paper
end

get '/play' do
  erb :play
end

run! if app_file == $0
end
