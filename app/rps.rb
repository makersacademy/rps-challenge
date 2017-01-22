require 'sinatra/base'
require "./lib/player.rb"
require "./lib/computer.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base


  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    erb(:play_rps)
  end

  before do
    @game = Game.instance
  end

  post "/selection" do
    player_choice = (@game.player.choice(params[:take_your_pick]))
    @game.computer.make_selectionover
    computer_choice = (@game.computer.computer_selection)
    @game.selections(player_choice, computer_choice)
    @game.check_winner
    redirect '/outcome'
  end

  get '/outcome' do
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
