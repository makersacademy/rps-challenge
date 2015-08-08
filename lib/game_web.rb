require 'sinatra/base'
require_relative 'game'

class Rpschallenge < Sinatra::Base
  
set :views, proc { File.join(root, '..', 'views') }
$game = Game.new

  get '/' do
    erb :index
  end

  post '/choose' do
    @name=params[:name]
    player_2 = 'Computer' if params[:computer] = 'Yes'
    new_game(@name, @computer)
    erb :choose
  end

  def new_game name, computer
    $game = Game.new
    player_1 = Player.new
    player_2 = Player.new
    player_1.name = name
    player_2.name = computer
    $rock = Weapon.new
    $paper = Weapon.new
    $scissors = Weapon.new
    $rock.is_superior_to $scissors
    $paper.is_superior_to $rock
    $scissors.is_superior_to $paper
    $game.make_available $rock
    $game.make_available $paper
    $game.make_available $scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


