require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter_game
  end

  post '/name' do
    session['Name'] = params['Name']
    redirect '/play'
  end

  get '/play' do
    @name = session['Name']
    erb :play_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
