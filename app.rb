require 'sinatra/base'
require './lib/game'
require './lib/startup'
require './lib/player'
require './lib/attack'

class RPSApp < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    Game.create(Startup::WEAPONS)
    erb(:index, :layout => :layout)
  end

  post '/enter-name' do
    weapon = Startup::WEAPONS.get_weapon_by_name(params[:weapon])
    @player_1 = Player.new(params[:name], weapon)
    @game.add_player(@player_1)
    @player_2 = Player.new("Computer", Startup::WEAPONS.random_weapon)
    @game.add_player(@player_2)
    redirect to '/play'
  end

  get '/play' do
    @attack = Attack.new(@game)
    @attack.attack
    erb(:play, :layout => :layout)
  end

  run! if app_file == $PROGRAM_NAME
end
