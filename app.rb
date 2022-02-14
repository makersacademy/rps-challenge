require 'sinatra/base'
require 'sinatra/reloader'


class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    $player_name = (params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb(:play)
  end

  run! if app_file == $0
end