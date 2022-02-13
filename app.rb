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

  get '/play' do
    @player_1 = session[:message] 
    if @player_1 == nil
      @player_1 = Player.new(params[:player_1])
      session[:message] = @player_1
    end
    erb :play 
  end

   post '/game' do
    @weapon = Weapon.new(params[:choice])
    # retrieve player_1 from the session
    @player_1 = session[:message] 
    @player_1.add_weapon(@weapon)
    # create a player_2 to simulate the computer. I have left the logic here to create a multuplayer option
    @player_2 = Player.new("Computer")
    @weapon_2 = Weapon.new(Computer.new.weapon)
    @player_2.add_weapon(@weapon_2)
    @game = Game.new
    @game.add(@player_1, @player_2)
    @result = @game.play_game
    erb :game
  end

  post '/finish' do
    redirect '/play'
  end

  post '/quit' do
    session[:message] = nil
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
