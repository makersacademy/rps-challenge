require 'sinatra/base'

class Game < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:name]
    erb :play
  end

  run! if app_file == $0
end
