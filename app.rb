require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/welcome' do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
