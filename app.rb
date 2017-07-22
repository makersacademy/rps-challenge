require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect'/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end
end
