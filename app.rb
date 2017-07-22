require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:name]
    redirect '/selection'
  end

  get '/selection' do
    erb :selection
  end
  run! if app_file == $0
end
