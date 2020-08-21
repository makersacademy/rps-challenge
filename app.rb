require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPSApp < Sinatra::Base
  enable :sessions

  before do
    @player_name = Player.name
  end

  get '/' do
    erb :index
  end

  post '/name' do
    Player.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @player_move = params[:choice]
    @computer_move = Computer.new.move
    erb Game.new.result(@player_move.to_sym, @computer_move.to_sym)
  end

  run! if app_file == $0
end
