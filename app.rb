require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    Game.create(session[:player_one])
    redirect '/choose'
  end

  get '/choose' do
    erb(:choose)
  end

  get '/weapon' do
    @game.p1.choose(params[:weapon])
    @game.p2.choose
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
