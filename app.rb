require 'sinatra/base'
require './lib/player'

class Rps  < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/named-player' do
    $name = Player.new(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @name = $name
    erb(:play)
  end

  get '/game' do
    "scissors"
  end



  run! if app_file == $0

end
