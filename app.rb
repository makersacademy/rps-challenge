require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = params[:player_one]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_one]
    erb(:play)
  end

end
