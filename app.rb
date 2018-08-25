require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    session[:name] = @player_name
    erb(:play)
  end

  get '/play-rps' do
    @player_name = session[:name]
    erb(:play_rps)
  end

end
