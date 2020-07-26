require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(params[:PlayerName])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end
end
