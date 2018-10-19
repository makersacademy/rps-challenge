require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    erb(:play)
  end

  run! if app_file == $0
end
