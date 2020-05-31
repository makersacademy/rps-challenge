require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1]
    erb :player_1
  end

  run! if app_file == $0

end
