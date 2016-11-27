require 'sinatra/base'
require "./lib/player.rb"
require "./lib/computer.rb"
require "./lib/game.rb"
require "./lib/logic.rb"

class RPS < Sinatra::Base


  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    logic = Logic.new
    @game = Game.create(player, computer, logic)
    erb(:play_rps)
  end

  before do
    @game = Game.instance
  end

  post "/selection" do
    @player_choice = (@game.player.choice(params[:take_your_pick]))
    @computer_choice = (@game.computer.selection)
    redirect '/outcome'
  end

  get '/outcome' do
    @game.logic.input_data(@player_choice, @computer_choice)
    @game.check_winner(@game.logic.player_wins?)
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
