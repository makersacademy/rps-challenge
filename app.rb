require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new('Opponent')
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

post '/choice' do
  @game.player_1.player_choice(params[:choice])
  @game.auto_turn
  redirect '/result'
end

get '/result' do
  erb(:result)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
