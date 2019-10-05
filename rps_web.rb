require 'sinatra/base'
require './lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions
  
  get '/' do
    @page = :index
    erb :template
  end

  post '/name' do
    Game.create(name: params[:player_name])
    redirect '/play'
  end
  
  get '/play' do
    @game = Game.instance
    @result = @game.result
    @ai_move = @game.ai_move.to_s.capitalize
    @player_name = @game.player_name
    @page = :play
    erb :template
  end

  post '/move' do
    Game.instance.play(params[:choice])
    redirect '/play'
  end
end