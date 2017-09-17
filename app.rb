require 'sinatra/base'
require './lib/DATABASE'
require './lib/player'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  DATABASE = PlayerDatabase.new
  COMPUTER = DATABASE.contents[0]

  get '/' do

    @player_2_name = COMPUTER.name
    erb(:index)
  end

  post '/names' do
    DATABASE.new_player('new entry',params[:name1])
    redirect '/play'
  end



  get '/play' do
    # DATABASE.contents[1].played_before ? @returning = " back"
    @player_1_name = DATABASE.contents[1].name
    @player_2_name = COMPUTER.name
    erb(:play)
  end

  post '/combat_selection' do
    DATABASE.contents[1].select_weapon(params[:selection])
    DATABASE.contents[0].random_weapon
    redirect '/combat_page'
  end

  get '/combat_page' do


    @computer_opponent_name = DATABASE.contents[0].name
    @computer_opponent_weapon = DATABASE.contents[0].weapon

    @player_1_name = DATABASE.contents[1].name
    @player_1_weapon = DATABASE.contents[1].weapon

    computer_opponent = DATABASE.contents[0]

    game = Game.new
    player1 = DATABASE.contents[1]
    game.play_over_multiple([player1, computer_opponent])
    @winner = game.result

    @player_1_score = player1.points
    @computer_opponent_score = computer_opponent.points

    erb(:combat_page)
  end

  run! if app_file == $0

end
