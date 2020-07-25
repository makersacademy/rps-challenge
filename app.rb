require 'sinatra/base'
require './lib/player'
require './lib/opponent'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/test' do
    'Testing RPS!'
  end

  post '/play' do
    $player = Player.new(params[:player_name])
    erb(:play)
  end

  post '/result' do
    $option = params[:option]
    $opponent = Opponent.new.opponent_choice
    $result = 'the method to determine who wins, from game'
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
