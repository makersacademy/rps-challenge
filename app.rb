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
    @game = Game.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/results' do
    @game.choose(params[:choice])
    if @game.winner == "Tie"
      erb(:tie)
    else
      erb(:results)
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
