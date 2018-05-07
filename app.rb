require 'sinatra'
require './lib/game.rb'
require './lib/computer.rb'
require './lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    Game.save_instance(Player.new, Computer.new)
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/name' do
    @game.player.define_name(params[:player])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    @game.player.define_weapon(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  post '/restart' do
    redirect '/'
  end

end
