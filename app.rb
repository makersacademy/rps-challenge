require 'sinatra/base'
require_relative './lib/game'

class MyGame < Sinatra::Base
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
    erb(:pvp_weapon)
  end

  post '/pvp_player_choice' do
    weapon = params[:weapon].to_sym
    @game.current_turn.weapon = weapon
    if @game.check_player2_weapon?
      redirect '/result'
    else
      @game.switch_turns
      erb :pvp_weapon
    end
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
    erb(:cpu_weapon)
  end

  post '/cpu_p1_choice' do
    weapon = params[:weapon].to_sym
    @game.player_1.weapon = weapon
    redirect '/result'
  end

  get '/result' do
  #problem with computer weapon result
    erb :result
  end

  run! if app_file == $0

end
