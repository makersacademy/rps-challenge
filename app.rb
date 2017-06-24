# /app.rb
require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    erb(:play)
  end

  run! if app_file == $PROGRAM_NAME
end
