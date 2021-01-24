require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect 'play-page'
  end

  get '/play-page' do
    @player_name = session[:player_name]
    erb(:play_page)
  end
end
