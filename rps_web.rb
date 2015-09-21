require 'sinatra'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPSWeb < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, 'views') }
  set :public_folder, proc { File.join(root, 'public') }

  get '/' do
    erb :name_form
  end

  get '/game' do
    @name = params[:name]
    erb :game
  end

  get '/result' do
    @game = Game.new
    @player = Player.new
    @computer = Computer.new
    $choice = params[:choice]
    $choiceTest = $choice.to_s
    erb :result
  end

end