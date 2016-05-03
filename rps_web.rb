require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/names' do
    erb :names
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    Game.create(player_1)
    redirect '/play'
  end


  get '/play' do
    erb :play
  end

  before do
    @game = Game.instance
  end

  post '/rock' do
    @game.player_1.choice = :rock
    redirect '/result'
  end

  post '/paper' do
    @game.player_1.choice = :paper
    redirect '/result'
  end

  post '/scissors' do
    @game.player_1.choice = :scissors
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  run! if app_file == $0
end
