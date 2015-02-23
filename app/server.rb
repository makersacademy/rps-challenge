require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScisors < Sinatra::Base

enable :sessions

get '/' do
  if params[:playername]
    erb :game
  else 
    erb :register
  end
end

get '/register' do
  erb :register
end

post '/register' do
  if params[:name]
      erb :game
    else
    RPS = Game.new
    session[:playername] = params[:playername]
    @@playerone = Player.new("#{session[:playername]}")
    RPS.add_player(@@playerone)
    @@playertwo = Player.new("Computer")
    RPS.add_player(@@playertwo)
    erb :game
  end
end

post '/game' do
  @gameover = RPS.over?
  @weapon = params[:weapon]
  @@playerone.choose_weapon(@weapon)
  @@playertwo.choose_random_weapon
  #Decides who won or tell if it was a tie:
  @beater = RPS.beater?
  if @beater == "Tie. Choose again"
    @tie = "Tie. Choose again"
    erb :game
  else
    @countmessage = "You: #{RPS.count[@@playerone.name]} - your opponent: #{RPS.count[@@playertwo.name]}" 
    erb :game
  end
end

get '/playagain' do
redirect '/'
end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
