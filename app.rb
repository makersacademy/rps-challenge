require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/computer.rb'

class RPSGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session['name'] = params['name']
    # player = Player.new(params[:player_name])
    # computer = Computer.new
    # $game = Game.new(player, computer)
    redirect ('/start')
  end

  get '/start' do
    @name = session['name']
    erb :start
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
