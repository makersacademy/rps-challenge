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
    player_1 = Player.new(params[:player_name], params[:weapon])
    @round = Round.create(player_1)
    erb :choose
  end

  get '/result' do
    @round.random_opponent
    @round.result
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
