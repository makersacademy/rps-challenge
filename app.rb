require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    player1 = Player.new(params[:player1])
    computer = Computer.new
    @game = Game.create(player1, computer) 
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    @game.player1.choice = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @result = @game.get_result
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
