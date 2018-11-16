require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  # before do
  #   @player = Player.instance
  # end
  
  get '/' do
    erb(:index)
  end

  post '/setup' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end
end