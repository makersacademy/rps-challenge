require 'sinatra/base'
require './lib/game'

class RockPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = params[:player_name]
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/round' do
    choice = params[:choice]
    @game.player_choice(choice)
    redirect '/round'
  end

  get '/round' do
    erb :round
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
