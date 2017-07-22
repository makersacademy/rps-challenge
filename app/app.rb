require 'sinatra/base'

class RpsWeb < Sinatra::Base

  run! if app_file == $0

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

end
