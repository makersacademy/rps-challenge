require 'sinatra/base'
require 'sinatra/reloader'

class Online_Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
