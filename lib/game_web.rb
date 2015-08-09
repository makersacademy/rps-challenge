require 'sinatra/base'
require_relative 'game'

class Rpschallenge < Sinatra::Base
  
set :views, proc { File.join(root, '..', 'views') }


  get '/' do
    erb :index
  end

  get '/choose' do
    erb :choose
  end

  post '/choose' do
    @name=params[:name]
    player_2 = 'Computer' if params[:computer] = 'Yes'
    new_game(@name, @computer)
    erb :choose
  end

  post '/throw' do
    $game.available_weapons.each { |x| @throw = x if x.name == params[:choice] }
    $game.moves[$player_1] = @throw
    $game.computer_throw
    $winner = $game.rank($game.moves)
    p $winner
    erb :result
  end

  def new_game name, computer
    $game = Game.new
    $player_1 = Player.new
    $player_2 = Player.new
    $player_1.name = name
    $player_2.name = computer
    $rock = Weapon.new
    $rock.name = 'Rock'
    $paper = Weapon.new
    $paper.name = 'Paper'
    $scissors = Weapon.new
    $scissors.name = 'Scissors'
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


