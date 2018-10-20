require 'sinatra/base'
require './lib/cpu.rb'
require './lib/game.rb'
require './lib/human.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Human.new(params[:player_name])
    player_2 = Cpu.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_1 = @game.player_1
    erb :play
  end

  post '/decision' do
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @player_1.store(params[:player_choice])
    erb :decision
  end

end
