require 'sinatra/base'
require './lib/game'

class Play < Sinatra::Base
  # configure(:development) { set :session_secret, "My session secret" }
  enable :sessions
  set :session_secret, "My session secret"

  # before do
  #   @game = Game.instance
  # end

  get '/' do
    erb :home
  end

  post '/names' do
    puts params
    # Game.store(Game.new(extract_names(params)))
    @game = Game.new(extract_names(params))
    puts "/names: ", @game.names
    # @game = Game.instance
    # puts @game
    session[:game] = @game
    redirect '/game'
  end

  get '/game' do
    @game = session[:game]
    # puts "/game: ", @game.class
    players = @game.players
    # puts players.length
    # puts "players: ", players[0].name
    @player_1 = players[0].name
    @player_2 = players[1].name
    @bot = players[1].bot
    puts "player 1 : ", @player_1
    puts "player 2 : ", @player_2

    turn_id, @turn_name = @game.whose_turn?
    @turn_id = ".p_#{turn_id}"

    erb :game
  end
  
end

def extract_names params
  names = []
  params.each do |k, v|
    if k.match?(/player_\d_name/) and !v.empty?
      names << v
    end
  end

  puts "entered names: ", names
  return names

  # run! if app_file == $0
end