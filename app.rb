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
    @player1name = params[:player1name]
    erb(:play)
  end  


end