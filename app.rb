require 'sinatra/base'

class RPS < Sinatra::Base
 enable :sessions


  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params['player_name']
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  get '/result' do
    @choice = params['choice']
    erb :result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
