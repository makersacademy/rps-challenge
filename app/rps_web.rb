require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :static, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  get '/result' do
  end 

end
