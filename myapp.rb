require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @@player1 = Player.new(params[:p1_name])
    redirect '/play'
  end

  get '/play' do
    @p1_name = @@player1.name
    erb(:play)
  end

  run! if app_file == $0

end
