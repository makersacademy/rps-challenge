require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/register' do
    session[:human_player_name] = params[:human_player_name]
    redirect '/play'
  end

  get 'play' do
    @human_player_name = session[:human_player_name]
    erb(:play)
  end


  #play > redirect to get


  #route for each move?
end
