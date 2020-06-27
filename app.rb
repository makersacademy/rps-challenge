require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    ":)"
    erb :index
  end

  post '/name' do
    @playerone = (params[:player_one_name])
    erb :start
  end


  run! if app_file == $0
end