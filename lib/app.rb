require 'sinatra/base'
require 'sinatra/flash'
require './lib/player'
require './lib/computer'
require './lib/game'

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
          hash[:player] =  Player.new(params["player_#{n + 1}"])
          hash[:type] =  type.capitalize
        }
        @players.push(player_hash)
      else
        player_hash = Hash.new.tap { |hash|
          hash[:player] =  Computer.new()
          hash[:type] =  type.capitalize
        }
        @players.push(player_hash)
      end
    end

    $game = Game.new(@players)
    redirect '/play'
  end

  get '/play' do
    @players = $game.players
    erb :play, :layout => :'/layout'
  end
end
