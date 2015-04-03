require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/game' do
    @name = params[:name]
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
