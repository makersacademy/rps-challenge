require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
   @player_1 = Player.new(params[:player_1_name])
   @game = Game.new_game(@player_1)
   redirect '/play'
  end

  before do
   @game = Game.instance
  end

  get '/play' do
   erb :play
  end

  post '/rock' do
    @game.player.choose_rock
    @game.result?
    redirect '/result'
  end

  post '/paper' do
    @game.player.choose_paper
    @game.result?
    redirect '/result'
  end

  post '/scissors' do
    @game.player.choose_scissors
    @game.result?
    redirect '/result'
  end

  post '/lizard' do
    @game.player.choose_lizard
    @game.result?
    redirect '/result'
  end

  post '/spock' do
    @game.player.choose_spock
    @game.result?
    redirect '/result'
  end

  get '/result' do
    erb :result
  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
