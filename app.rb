require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :home
  end

  post '/' do
    player_1 = Player.new(params[:name])
    @game = Game.create(player_1)
    redirect '/select_rps'
  end

  get '/select_rps' do
    erb :select_rps
  end

  post '/select_rps' do
    @game.choices << params[:selected]
    @game.choices << Computer.new.choice
    redirect '/results'
  end

  get '/results' do
    erb :results
  end

  run! if app_file == $0

end
