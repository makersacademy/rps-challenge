require 'sinatra/base'
require './lib/marketer.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    marketer = Marketer.new(params[:name])
    computer = Computer.new
    @game = Game.create(marketer,computer)
    erb(:play)
  end

  post '/result' do
    @game = Game.instance
    @game.player.choice = params[:choice]
    @game.computer.select_weapon
    erb @game.result
  end

  get '/play_again' do
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
