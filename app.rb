require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    erb :play
  end

  before do
    @game = Game.instance
  end

  post "/selection" do
    player_choice = (@game.player.pick(params[:choose_your_weapon]))
    @game.computer.make_selection
    computer_choice = (@game.computer.computer_selection)
    @game.selections(player_choice, computer_choice)
    @game.winner
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  #start the server is ruby file executed directly
  run! if app_file == $0
end
