require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer_player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:name)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = ComputerPlayer.new('Computer')
    Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @player = @game.player1
    erb(:play)
  end

  post '/calculate' do
    @game.player1.weapon=(params[:player_weapon].to_sym)
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  post '/reset' do
    player = @game.player1
    computer = ComputerPlayer.new('Computer')
    Game.create(player, computer)
    redirect '/play'
  end

  run! if app_file == $0

end
