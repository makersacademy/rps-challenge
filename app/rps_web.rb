require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPSWeb < Sinatra::Application

  enable :sessions

  before do
    @game = Game.instance
  end

  helpers do
    def current_player
      Player.find(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_id] = id
    end
  end

  get '/' do
    erb(:index)
  end

  post '/player_count' do
    session[:player_count] = params[:player_count]
    redirect '/enter_names'
  end

  get '/enter_names' do
    @player_count = session[:player_count]
    erb(:enter_names)
  end

  post '/names' do
    params[:player_2_name].nil? ? player_2 = Computer.new() : player_2 = Player.new(params[:player_2_name])
    player_1 = Player.new(params[:player_1_name])
    session[:player2] = player_2
    @game = Game.create(player_1, player_2)
    redirect '/select_game'
  end

  get '/select_game' do
    erb(:select_game)
  end

  post '/select_game' do
    @game.game_mode = params[:game_mode]
    redirect '/pick_weapon'
  end

  get '/pick_weapon' do
    @player_count = session[:player_count]
    erb(:pick_weapon)
  end

  post '/choice' do
    @player_count = session[:player_count]
    if @game.player_1.weapon.nil?
      @game.player_1.weapon = params[:choices]
      if @player_count == "1player"
        redirect '/play'
      else
        redirect '/pick_weapon'
      end
    elsif @game.player_2.weapon.nil? && @player_count == "2players"
        @game.player_2.weapon = params[:choices]
        redirect '/play'
      else
        redirect '/play'
    end
  end

  get '/play' do
    if session[:player_count] == '1player'
      @player_2 = session[:player2]
      @game.game_mode
      if @game.game_mode == 'rpsls'
         @player_2_choice = @game.player_2.rpsls_weapon
         @game.player_2.weapon = @player_2_choice
      end
        @player_2_choice = @player_2.weapon_select
        @game.player_2.weapon = @player_2_choice
    end
    erb(:play)
  end

  run! if app_file == $0
end
