require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/player_name' do
    player_name = params[:player_name]
    redirect '/play_rps'
  end

  get '/play_rps' do
    erb :play_rps
  end

run! if app_file == $0
end
