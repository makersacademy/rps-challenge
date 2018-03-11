require 'sinatra/base'

class HandShapeGame < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0

end
