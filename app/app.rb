require 'sinatra/base'
require './lib/marketeer.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/play' do
    marketeer = Marketeer.new(params[:name])
    computer = Computer.new
    @game = Game.create(marketeer,computer)
    erb(:play)
  end
  
  get '/play' do
    erb(:play)
  end

  post '/result' do
    @game.player.choice = params[:choice]
    @game.computer.select_weapon
    erb @game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
