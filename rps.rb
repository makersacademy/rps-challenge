require 'sinatra/base'
require './lib/weapon.rb'
require './lib/player.rb'
require './lib/game.rb'
class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    computer = Computer.new
    player = Player.new(params[:name])
    @game = Game.create(player,computer)
    erb(:play)
  end

  post '/choice' do
    @game = Game.instance
    @weapon= Weapon.new(params[:weapon])
    @game.play(params[:weapon])
    erb(:choice)
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
