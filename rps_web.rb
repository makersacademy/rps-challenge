require 'sinatra'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPSWeb < Sinatra::Base

  enable :sessions

  $game = Game.new
  $player = Player.new

  set :views, proc { File.join(root, 'views') }
  # set :public_folder, proc { File.join(root, 'public') }  also link in each individual erb.

  get '/' do
    erb :name_form
  end

  get '/game' do
    @name = params[:name]
    erb :game
  end

  get '/result' do
    @computer = Computer.new
    $choice = params[:choice]
    $choiceTest = $choice.to_s
    erb :result
  end

end