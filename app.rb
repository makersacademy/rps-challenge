require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'



class RockPaperScissors < Sinatra::Base

  set :session_secret, "Here be Dragons"


  get '/' do
    erb :form
  end

  post '/names' do
    player = Player.new(params[:player_1_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/rock' do
    @game = Game.load_instance
    @game.player1.choose(1)
    @game.computer.choose
    redirect '/play'
  end

  get '/paper' do
    @game = Game.load_instance
    @game.player1.choose(2)
    @game.computer.choose
    redirect '/play'
  end

  get '/scissors' do
    @game = Game.load_instance
    @game.player1.choose(3)
    @game.computer.choose
    redirect '/play'
  end

  get '/play' do
    @game = Game.load_instance
    erb :play
  end

  run! if app_file == $0
end
