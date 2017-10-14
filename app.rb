require 'sinatra/base'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/infastructure' do
    "Testing Infastructure"
  end

  get '/' do
    erb(:title)
  end

  post '/play' do
    @player = Player.new(params[:name])
    erb(:play)
  end

end