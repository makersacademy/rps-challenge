require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/game'


class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = Player.create(params[:player1name])
    erb(:play)
  end 

  get '/rock' do
    @player = Player.instance
    @player.move = 'Rock'
    redirect to '/determine'
  end

  get '/determine' do
    erb(:determine)
  end

end