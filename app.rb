require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base
  enable :session

  get ('/') do
    erb(:index)
  end

  post('/name') do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    erb(:play)
  end

end
