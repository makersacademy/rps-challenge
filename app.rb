require 'sinatra/base'

class RPSApp < Sinatra::Base
  set :session_secret, 'makers'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    erb :play
  end

  run! if app_file == $0
end
