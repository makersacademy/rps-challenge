require 'sinatra/base'
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"
require_relative "./lib/computer.rb"
require_relative "./lib/weapon.rb"

class RPSWeb < Sinatra::Base
  enable :sessions

  attr_reader :players

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    @name = session[:player_name]
    redirect to('/play')
  end

  get '/play' do
    @name = session[:player_name]
    erb(:play)
  end

  post '/result' do
    p params
    @name = session[:player_name]
    session[:weapon_type] = params[:weapon_type]
    @player_1 = Player.new(@name)
    weapon_1 = Weapon.new(params[:weapon_type])
    @player_1_weapon = @player_1.choose_weapon(weapon_1)
    @computer = Computer.new("Computer")
    @computer_weapon = @computer.choose_weapon
    @game = Game.new(@player_1)
    @game.add_player(@computer)

    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
