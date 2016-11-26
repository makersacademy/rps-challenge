require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end



  run! if app_file == $0
end
