require 'sinatra/base'
require './lib/round'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @round = Round.instance
  end
  get '/' do
    erb :index
  end

  post '/choose' do
    player_1 = Player.new(params[:player_name])
    weapon = params[:weapon]
    @round = Round.create(player_1, weapon)
    erb :choose
  end

  post '/play' do

    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
