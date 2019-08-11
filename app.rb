require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :welcome
  end

  post '/names' do
    session['name'] = params['player_name']
    redirect '/play'
  end

  get '/play' do
    @name = session['name']
    erb :play
  end

  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
