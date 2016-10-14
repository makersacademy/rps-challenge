require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end
  
  post '/register' do
    @reg_name = params['player_name']
    erb(:register)
    #redirect '/play'
  end
  
  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end