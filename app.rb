require 'sinatra/base'
require './lib/player'
require './lib/game'
class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:name])
    @game = Game.create(player1)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/result' do
    @game = Game.instance
    @player1_choice = params[:choice]
    @game.player_choice(@player1_choice)
    erb(:result)
  end

  run! if app_file == $0
end
