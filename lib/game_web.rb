require 'sinatra/base'
require_relative 'game'

class Rpschallenge < Sinatra::Base
  
set :views, proc { File.join(root, '..', 'views') }
$game = Game.new

  get '/' do
    erb :index
  end

  post '/choose' do
    new_game

  end

  def new_game
    $rock = Weapon.new
    $paper = Weapon.new
    $scissors = Weapon.new
    $rock.is_superior_to scissors
    $paper.is_superior_to rock
    $scissors.is_superior_to paper
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


