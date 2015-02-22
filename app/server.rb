require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScisors < Sinatra::Base

  configure do
    enable :session
  end

  RPS = Game.new
  WEAPON = nil
  AUTOPLAYER = Player.new("Computer")
  
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
    PLAYERONE = Player.new("#{@name}")
    RPS.add_player(PLAYERONE)
    RPS.add_player(AUTOPLAYER)
    erb :game
  end
end

post '/game' do
  WEAPON = params[:weapon]
  PLAYERONE.choose_weapon(WEAPON)
  AUTOPLAYER.choose_random_weapon
  @beater = RPS.beater?(PLAYERONE, AUTOPLAYER)
  erb :game
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
