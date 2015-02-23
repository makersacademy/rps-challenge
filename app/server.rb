require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScisors < Sinatra::Base

enable :sessions

get '/' do
    erb :register
end

get '/register' do
  erb :register
end

post '/register' do
    RPS = Game.new
    session[:playername] = params[:playername]
    @@player_one = Player.new("#{session[:playername]}")
    RPS.add_player(@@player_one)
    @@player_two = Player.new("Computer")
    RPS.add_player(@@player_two)
    erb :game
end

post '/game' do
  @game_over = RPS.over?
  @weapon = params[:weapon].to_sym
  @@player_one.weapon = @weapon
  @@player_two.random_weapon
  @beater = RPS.beater?
  @player_one_count = RPS.count(@@player_one.name) 
  @player_two_count = RPS.count(@@player_two.name)
  @tie = :tie if @beater == :tie
  @winner = RPS.winner
  erb :game
end

get '/game' do
  @player_one_count = RPS.count(@@player_one.name)
  @player_two_count = RPS.count(@@player_two.name)

end

get '/playagain' do
  redirect '/'
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
