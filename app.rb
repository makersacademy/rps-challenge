require 'sinatra/base'
require './lib/database'
require './lib/player'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions


    database = PlayerDatabase.new

  get '/' do
    @player_2_name = database.contents[0].name
    erb(:index)
  end

  post '/names' do
    database.contents << Player.new(params[:name1])

    redirect '/play'
  end

  get '/play' do
    @player_1_name = database.contents[1].name
    @player_2_name = database.contents[0].name
    $current_db = database
    erb(:play)
  end

  post '/combat_selection' do
    database.contents[1].select_weapon(params[:selection])
    database.contents[0].random_weapon
    redirect '/combat_page'
  end

  get '/combat_page' do
    game = Game.new
    @computer_opponent_name = database.contents[0].name
    @computer_opponent_weapon = database.contents[0].weapon

    @player_1_name = database.contents[1].name
    @player_1_weapon = database.contents[1].weapon

    computer_opponent = database.contents[0]
    player1 = database.contents[1]
    game.calculating_winner(player1, computer_opponent)
    @winner = game.result

    erb(:combat_page)
  end

  run! if app_file == $0

end
