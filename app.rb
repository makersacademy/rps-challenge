require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/enemy'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  enable :static
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    # session[:player_name] = params[:player_name]
    player = Player.new(params[:player_name])
    enemy = Enemy.new
    @game = Game.create(player, enemy)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/rock' do
    @game.player.rock
    @game.enemy.choose_weapon
    @game.find_winner
    redirect '/play'
  end

  get '/paper' do
    @game.player.paper
    @game.enemy.choose_weapon
    @game.find_winner
    redirect '/play'
  end

  get '/scissors' do
    @game.player.scissors
    @game.enemy.choose_weapon
    @game.find_winner
    redirect '/play'
  end

  get '/lizard' do
    @game.player.lizard
    @game.enemy.choose_weapon
    @game.find_winner
    redirect '/play'
  end

  get '/spock' do
    @game.player.spock
    @game.enemy.choose_weapon
    @game.find_winner
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
