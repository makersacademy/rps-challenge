require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player_name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    @player = @game.player
    erb :play
  end

  post '/choice' do
    @game.computer.choice = Computer.new.rand_choice
    @game.player.choice = params[:choice].downcase.to_sym
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

run! if app_file == $0

end
