require 'sinatra/base'
require './lib/player'
 
class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1_name = Player.new(params[:player1_name]).name
    erb(:play)
  end

  get '/choice' do
    erb(:choice)
  end
end
