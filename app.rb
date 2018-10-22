require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/human'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :no_players
  end

  get '/enter-name' do
    erb :enter_name
  end

  post '/submit-name' do
    player_1 = Human.new(params[:name])
    player_2 = Computer.new('Computer')
    @game = Game.create(player_1, player_2)
    redirect '/game'
  end

  get '/enter-names' do
    erb :enter_names
  end

  post '/submit-names' do
    player_1 = Human.new(params[:name_1])
    player_2 = Human.new(params[:name_2])
    @game = Game.create(player_1, player_2)
    @game.no_players = 2
    redirect '/game'
  end

  get '/game' do
    @game.update_stats if @game.show_results?
    erb :game
  end

  post '/make-move' do

    if @game.player_2.instance_of? Computer
      @game.player_1.set_move(params[:move])
      @game.player_2.comp_choice
      redirect '/game'
    end

    @game.move_number +=1
    if @game.show_results?
      @game.player_2.set_move(params[:move])
    else
      @game.player_1.set_move(params[:move])
    end
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
