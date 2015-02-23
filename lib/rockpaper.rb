require 'sinatra/base'
require_relative 'player'
require_relative 'computer'
require_relative 'game'

class RockPaper < Sinatra::Base

  enable :sessions

  player = Player.new(:player_name)
  computer = Computer.new
  game = Game.new(player, computer)

  set :views, Proc.new { File.join("views")}

  get '/' do
    erb :index
  end

  post '/' do
    if params[:player_name].empty?
      @name = "Please tell me your name!"
      erb :index
    else
      @name = params[:name]
      @weapon = params[:weapon]
      player.name = @name
      player.pick = @pick
      computer.pick
      erb :welcome
    end
  end

  post '/newgame' do
    @winner = game.winner
    erb :newgame
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
