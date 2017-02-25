require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/game/new' do
    erb :'game/new'
  end

  post '/players/names' do
    @game = Game.create(params[:player1_name], params[:player2_name])
    redirect 'players/1/choice'
  end

  get '/players/1/choice' do
    erb :'players/1/choice'
  end

  post '/players/2/choice' do
    @game = Game.instance
    @game.player1.set_choice(params[:choice].to_sym)
    redirect '/players/2/choice'
  end

  get '/players/2/choice' do
    erb :'players/2/choice'
  end

  post '/game/result' do
    @game = Game.instance
    @game.player2.set_choice(params[:choice].to_sym)
    @winner = @game.winner
    erb :'game/result'
  end

end
