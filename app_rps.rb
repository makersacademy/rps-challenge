require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    p params
    erb :index
  end

  post '/names' do
    p params
    @player_1_name = params[:player_1_name]
    erb :lets_fight

  end

  run! if app_file == $0
end
