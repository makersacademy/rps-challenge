require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    players = [ Player.new(name: params["player_1_name"]), Player.new(name: params["player_2_name"])]
    @game = Game.create(players: players, hands: @hands)
    redirect '/play'
  end

  post '/move' do
    @game = Game.instance
    @game.current_player.hand = params['hand']
    redirect '/results' if @game.round_complete?
    @game.rotate
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/results'do
    @game = Game.instance
    erb :results
  end

end


# def get_hands(number)
#   hands = ['Rock', 'Paper', 'Scissors']
#   hands.concat(['Lizzard', 'Spock']) if number > 2
#   hands.concat(['Fire', 'Pinkey']) if number > 3
#   return hands
# end
