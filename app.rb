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
    weapon = Startup::WEAPONS.select { |e| e.name == params[:weapon] }[0]
    @player_1 = Player.new(params[:name], weapon)
    @game.add_player(@player_1)
    @player_2 = Player.new("Computer", Startup::WEAPONS[Kernel.rand(Startup::WEAPONS.count-1)])
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
