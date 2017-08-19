require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = params[:Player]
    erb(:play)
    redirect '/play'
  end

  get '/play' do
    # $player = params[:Player]
    erb(:play)
  end

  post '/outcome' do
    erb(:outcome)
  end

  run! if app_file == $PROGRAM_NAME
end
