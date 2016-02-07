require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $name = params[:name]
    @name=$name
    redirect to '/play'
  end

  get '/play' do
    @name = $name
    erb :play
  end


  run! if app_file == $0
end
