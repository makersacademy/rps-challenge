require 'sinatra'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = Player.new(params[:name])
    erb(:game)
  end

end
