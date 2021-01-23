require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    p params
    erb(:index)
  end

  post '/names' do
    p params
    session[:player_1_name] = params[:player_1_name]
    redirect '/lets_fight'
  end

  get '/lets_fight' do
    @player_1_name = session[:player_1_name]
    erb(:lets_fight)
  end

  run! if app_file == $0
end
