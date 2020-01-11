require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/register_name' do
    params[:player_name]
  end

  run! if app_file == $0
end
