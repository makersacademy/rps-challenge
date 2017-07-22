require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/selection' do
    @player_name = params[:player_name]
    p params
    @selection = params[:Selection]
    erb :selection
  end

  get '/selection' do
    erb :selection
  end
  run! if app_file == $0
end
