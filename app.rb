require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  run! if app_file == $0

  get '/' do
    erb :name
  end
# this method will get the user input for player name and
# save it to a session before redirecting to the /welcome method
  post '/names' do
    session['player_name'] = params[:player_name]
    redirect '/welcome'
  end
# this method will take the session from /names method and
# save it to an instance variable, then load up the welcome page
  get '/welcome' do
    @player_name = session['player_name']
    erb :welcome
  end

  get '/play' do
    erb :play
  end
end
