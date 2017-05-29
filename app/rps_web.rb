require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'
require './lib/victory_calculator.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/weapon' do
    player_weapon = params[:weapon_choice]
    @game.start(player_weapon)
    redirect '/weapon'
  end

  get '/weapon' do
    erb(:weapon)
  end

  post '/restart' do
    params[:reset_game]
    redirect '/'
  end

  post '/play_again' do
    params[:play_again]
    redirect '/play'
  end

  run! if app_file == $0

end
