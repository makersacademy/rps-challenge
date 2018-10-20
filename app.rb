require 'sinatra/base'
require './lib/cpu.rb'
require './lib/game.rb'
require './lib/human.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    human = Human.new(params[:player_name])
    cpu = Cpu.new
    game = Game.create(human, cpu)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player_1 = @game.player_1
    erb :play
  end

  post '/decision' do
    @game = Game.instance
    @human = Game.instance.player_1
    @cpu = Game.instance.player_2
    @human.store(params[:player_choice])
    erb :decision
  end

end
