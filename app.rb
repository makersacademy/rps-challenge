require 'sinatra/base'
require 'sinatra/reloader'
#require_relative 'lib/player'


class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  #enable :sessions

  get '/' do
    erb :index
  end

  post '/sign_in' do
    $player_name = (params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end