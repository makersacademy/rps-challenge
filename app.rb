require 'sinatra/base'
class RPS < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/name' do
    @name = params[:player_name]
    erb :play
  end
  run! if app_file == $0
end
