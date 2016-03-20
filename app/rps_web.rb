require 'sinatra/base'
require_relative '../lib/game.rb'



class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = Player.new(params[:name])
    Game.save(Game.new(@player))
    redirect('/play')
  end

  get '/play' do
    @game = Game.load
    erb(:play)
  end

  post '/choice' do
    @game = Game.load
    @game.player1.weapon(params[:choice])
    @game.player2.weapon
    redirect('/result')
  end

  get '/result' do
    @game = Game.load
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
