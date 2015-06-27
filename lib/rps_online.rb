require 'sinatra/base'

class RPSOnline < Sinatra::Base
  
  set :views, proc { File.join(root,'..','views') }

  get '/' do
    erb :homepage
  end

  get '/start_game' do
    erb :start_game
  end

  post '/start_game' do
    
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
