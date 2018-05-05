require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/name2'
  end

  get '/name2' do
    erb(:name)
  end

  get '/play' do
    erb(:play)
  end
end
