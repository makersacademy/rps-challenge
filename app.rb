require 'sinatra/base'
require './lib/cpu.rb'
require './lib/game.rb'
require './lib/human.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Human.new(params[:player_name]), Cpu.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/decision' do
    @game.player_1.store(params[:player_choice])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
