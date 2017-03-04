require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  run! if app_file == $0

  get '/' do
    erb :name
  end

  post '/names' do
    session['player_name'] = params[:player_name]
    redirect '/welcome'
  end

  get '/welcome' do
    @player_name = session['player_name']
    erb :welcome
  end
end
