require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScisors < Sinatra::Base

configure do
  enable :session
end

RPS = Game.new
TURNS = []

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
    @name = params[:playername]
    @@playerone = Player.new("#{@name}")
    RPS.add_player(@@playerone)
    @@playertwo = Player.new("Computer")
    RPS.add_player(@@playertwo)
    erb :game
  end
end

post '/game' do
  @weapon = params[:weapon]
  @@playerone.choose_weapon(@weapon)
  @@playertwo.choose_random_weapon
  #Decides who won or tell if it was a tie:
  @beater = RPS.beater?(@@playertwo, @@playerone)
  if @beater == "Tie. Choose again"
    @tie = "Tie. Choose again"
    erb :game
  else
  #Saves to TURNS the beater of each round
  TURNS << @beater.name
  #Saves a count into COUNT Hash
  @count = TURNS.each_with_object(Hash.new(0)) { |player,beats| beats[player] += 1 }
  #Saves count into variable
  @countmessage = "You: #{@count[@@playerone.name]} - your opponent: #{@count[@@playertwo.name]}" 
  erb :game
  end
end

get '/playagain' do
redirect '/'
end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
