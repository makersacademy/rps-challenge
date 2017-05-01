require 'sinatra/base'

class RPS < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/names' do
    params[:player_1_name]
  end

run! if app_file == $0
end
