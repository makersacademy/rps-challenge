require 'sinatra/base'

class GAME < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb(:names)
  end
  run! if app_file == $0
end
