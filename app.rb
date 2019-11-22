require 'sinatra/base'

class Rockpaperscissors < Sinatra::Base
  # get '/' do
  #   'Testing infrastructure working!'
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
