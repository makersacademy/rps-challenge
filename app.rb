$VERBOSE=nil

require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new-game' do
    @player_name = params[:name]
    erb :new_game
  end

  post '/result' do
    @option = params[:option]
    "Your chose #{@option}"
  end

  run! if app_file == $0

end
