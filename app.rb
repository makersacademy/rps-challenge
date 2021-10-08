require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do 
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_name])
    computer = Player.new(computer)
    @game = Game.create(player1, computer)
    redirect '/play'
  end

  get '/play' do
    @game.player1.pick_action(params[:player_choice])
    @game.player2.pick_action
    erb :play
  end

  get '/result' do
  end
end