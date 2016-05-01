require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player1 = Player.new params[:name]
    @game = Game.create(player1)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/results' do
    @game.play(params[:choice])
    if @game.result == "Tie"
      erb(:tie)
    else
      erb(:results)
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
