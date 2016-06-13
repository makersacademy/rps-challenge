require 'sinatra/base'
require_relative 'lib/game'

class App < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/choice' do
    player = Player.new(session[:player_name],params[:choice])
    @game = Game.create(player)
    @game = Game.instance
    p @game.player_choice
    erb(@game.result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
