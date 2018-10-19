require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    players = []
    5.times { |i|
      player = params["player_#{i + 1}_name"]
      players << Player.new(name: player) unless player.empty?
    }
    if players.length < 2
      @error_message = "Enter two or more names"
      erb :index
    else
      @hands = get_hands(players.length)
      @game = Game.create(players: players, hands: @hands)
      redirect '/play'
    end
  end

  post '/move' do
    @game = Game.instance
    @game.current_player.hand = params['hand']
    @game.rotate
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

end


def get_hands(number)
  hands = ['Rock', 'Paper', 'Scissors']
  hands << ['Lizzard', 'Spock'] if number > 2
  hands << ['Fire', 'Pinkey'] if number > 3
  return hands
end
