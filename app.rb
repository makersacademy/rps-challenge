require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
