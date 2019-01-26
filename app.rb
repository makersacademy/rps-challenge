require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/storage' do
    session[:players_name] = params[:your_name]
    redirect "/play"
  end

  get '/play' do
    @player = session[:players_name]
    erb(:play)
  end


end
