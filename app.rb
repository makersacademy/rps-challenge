require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/rps' do
    @game.player.choice(params[:choice])
    @game.choice
    @game.user_computer_choices
    redirect '/result'
  end

  get '/result' do
    if :response == "Play Again"
      redirect '/game'
    elsif :response == "New player"
      redirect '/'
    else
      erb :result
    end
  end

  run! if app_file == $0
end
