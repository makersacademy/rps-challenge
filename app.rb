require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  # instance of Game available in every route
  # overidden in /player_name, where instance of game is setup
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    player = Player.new(params['name'])
    @game = Game.create(player)
    redirect '/your_turn'
  end

  get '/your_turn' do
    @player_name = @game.player.name
    erb :your_turn
  end

  post '/your_choice' do
    session['your_play'] = params['play_option']
    redirect '/outcome'
  end

  get '/outcome' do
    @your_play = session['your_play']
    @opponent_play = ['rock', 'paper', 'scissors'].sample
    erb :outcome
  end

  run! if app_file == $0
end
