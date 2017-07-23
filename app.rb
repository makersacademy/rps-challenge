require "sinatra"
require "./lib/game.rb"
require "./lib/player.rb"

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index 
  end

  post '/getting_started' do
    @player_1_name = Player.new(params[:player_1_name]).name
    p @player_1_name

    game = Game.new(params[:weapon]) 
    @computer_weapon = game.computer_choice.to_sym
    @weapon = game.player_choice.to_sym
    p @weapon
    p @computer_weapon
    @result = game.lets_play(@weapon, @computer_weapon)
    
    erb :getting_started
  end

  run! if app_file == $0

end
