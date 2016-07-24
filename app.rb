require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    Game.create(params[:player_one])
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
  run! if app_file == $0
end
