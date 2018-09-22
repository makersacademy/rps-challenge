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

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    add_player(player_1)
    player_2 = Player.new(params[:player_2_name])
    add_player(player_2)
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player_1.weapon = @game.player_choice(params[:choices])
    erb(:choice)
  end

  get '/choice' do
    erb(:choice)
  end

  post '/result' do
    @game.player_2.weapon = @game.player_choice(params[:choices])
    redirect '/result'
  end

  get '/result' do
    @player_1_name = @game.player_1.name
    @player_1_choice = @game.player_1.weapon
    @player_2_choice = @game.player_2.weapon
    erb(:result)
  end

  run! if app_file == $0
end
