require 'sinatra/base'
require './lib/player.rb'
require './lib/human.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Human.new(params[:player_name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @game.play(params[:player_move])
    redirect '/result'
  end

  get '/result' do

  end
  run! if app_file == $0
end
