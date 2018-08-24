require 'sinatra/base'
require_relative './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

end
