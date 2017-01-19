require "sinatra/base"
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'
require_relative 'lib/computer_opponent.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    opponent = Opponent.new
    @game = Game.create(player,opponent)
    redirect to('/play')
  end

  post '/names' do
    player1 = Player.new(params[:p1name])
    player2 = Player.new(params[:p2name])
    @game = Game.create(player1,player2)
    redirect to('/play')
  end

  get '/single_player' do
    erb(:one_player)
  end

  get '/multi_player' do
    erb(:two_player)
  end

  get '/play' do
    erb(:play)
  end

  post '/rock' do
    @game.player1.choose_rock
    @game.player2.choose_weapon
    redirect to('/result')
  end

  post '/paper' do
    @game.player1.choose_paper
    @game.player2.choose_weapon
    redirect to('/result')
  end

  post '/scissors' do
    @game.player1.choose_scissors
    @game.player2.choose_weapon
    redirect to('/result')
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0

end
