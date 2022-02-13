require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do 
    @player_1 = Player.new(params[:player_1])
    # store player_1 in the session
    session[:message] = @player_1
    erb :play 
  end

   post '/game' do
    @weapon = Weapon.new(params[:choice])
    # retrieve player_1 from the session
    @player_1 = session[:message] 
    @player_1.add_weapon(@weapon)
    # rcreate a player_2 to simulate the computer 
    @player_2 = Player.new("Computer")
    @weapon_2 = Weapon.new(Computer.new.weapon)
    @player_2.add_weapon(@weapon_2)
    @game = Game.new
    @game.add(@player_1, @player_2)
    @result = @game.play_game
    erb :game
  end

  post '/finish' do
    # rset the session to nil
    @player_1 = session[:message] 
    @player_1 = nil
    session[:message] = @player_1
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end