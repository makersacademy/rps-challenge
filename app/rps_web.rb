require 'sinatra/base'
require_relative '../lib/game'

class RpsWeb < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  # Two player (pvp) functions

  get '/pvp' do
    erb(:pvp)
  end

  post '/name_pvp' do
    player_1 = Player.new(params[:player1_name])
    player_2 = Player.new(params[:player2_name])
    @game = Game.create(player_1,player_2)
    redirect '/play_pvp'
  end

  get '/play_pvp' do
    @player1_name = @game.player_1.name
    @player2_name = @game.player_2.name
    erb(:play_pvp)
  end

  post '/pvp_p1_choice' do
    p1_choice = params[:weapon]
    @game.player_1.equip(p1_choice)
    redirect '/play_pvp_2'
  end

  get '/play_pvp_2' do
    @player2_name = @game.player_2.name
    erb(:play_pvp_2)
  end

  post '/pvp_p2_choice' do
    p2_choice = params[:weapon]
    @game.player_2.equip(p2_choice)
    redirect '/result'
  end

  # vs computer (cpu) functions

  get '/cpu' do
    erb(:cpu)
  end

  post '/name_cpu' do
    player_1 = Player.new(params[:player1_name])
    @game = Game.create(player_1)
    redirect '/play_cpu'
  end

  get '/play_cpu' do
    @player1_name = @game.player_1.name
    erb(:play_cpu)
  end

  post '/cpu_p1_choice' do
    p1_choice = params[:weapon]
    @game.player_1.equip(p1_choice)
    redirect '/result'
  end

  get '/result' do
    @player1_name = @game.player_1.name
    @player2_name = @game.player_2.name
    @player1_weapon = @game.player_1.weapon.name
    @player2_weapon = @game.player_2.weapon.name
    erb(@game.play)
  end

  run! if app_file == $0

end
