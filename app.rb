require "sinatra/base"
require "./lib/game.rb"
require "./lib/player.rb"

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index 
  end

  post '/getting_started' do
    game = Game.new(params[:weapon]) #=> new game instantiation with weapon
    @player_1_name = Player.new(params[:player_1_name]).name #=> player 1 name
    @weapon = game.player_choice.to_sym #=> choose weapon or sample if field empty
    @computer_weapon = game.computer_choice.to_sym #=> computer weapon

    @result = game.lets_play(@weapon, @computer_weapon) #=> battle result
    
    erb :getting_started
  end

  run! if app_file == $0

end
