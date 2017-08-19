require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/rps' do
    @player_1_name = params[:player_1_name]
    erb :rps
  end
  run! if app_file == $0
end
