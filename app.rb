require 'sinatra/base'

class RPSApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:player_name]
  end

  run! if app_file == $0
end