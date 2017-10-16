require 'sinatra/base'
require 'sinatra/flash'
require './lib/player'
require './lib/computer'
require './lib/game'
require './lib/rps_rules'

class RPS < Sinatra::Base

  enable :sessions
  register Sinatra::Flash

  PLAYER_COUNT = 2

  get '/' do
    @player_count = PLAYER_COUNT
    erb :index
  end

  post '/players' do
    @players = []

    PLAYER_COUNT.times do |n|
      type = params["player_#{n + 1}_type"]
      if type == 'human'
        player_hash = Hash.new.tap { |hash|
          hash[:player] = Player.new(params["player_#{n + 1}"])
          hash[:type] = type.capitalize
        }
      else
        player_hash = Hash.new.tap { |hash|
          hash[:player] = Computer.new()
          hash[:type] = type.capitalize
        }
      end
      @players.push(player_hash)
    end

    $game = Game.new(@players, RPSRules.rules)
    redirect '/play'
  end

  get '/play' do
    @player = $game.current_player
    erb :play, :layout => :'/layout'
  end

  get '/turn' do
    $game.turn_counter += 1
    $game.turn(params[:selection])
    if $game.turn_counter < PLAYER_COUNT
      @player = $game.current_player
      erb :play, :layout => :'/layout'
    else
      @winner = $game.calculate_win
      erb(:winner, :layout => :'/layout')
    end

  end
end
