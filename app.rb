require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new[params :player_1]
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/result' do

  end

end
