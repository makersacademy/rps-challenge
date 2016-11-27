require "sinatra/base"
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'
require_relative 'lib/computer_opponent.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:name])
    opponent = Opponent.new
    @game = Game.create(player,opponent)
    redirect to('/play')
  end

  get '/single_player' do
    erb(:one_player)
  end

  get '/multi_player' do
    erb(:two_player)
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/rock' do
    @game = Game.instance
    @game.player1.choose_rock
    @game.player2.choose_weapon
    redirect to('/result')
  end

  post '/paper' do
    @game = Game.instance
    @game.player1.choose_paper
    @game.player2.choose_weapon
    redirect to('/result')
  end

  post '/scissors' do
    @game = Game.instance
    @game.player1.choose_scissors
    @game.player2.choose_weapon

    redirect to('/result')
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end




  run! if app_file == $0

end
