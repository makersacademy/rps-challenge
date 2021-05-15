require 'sinatra/base'
# require 'sinatra/reloader'


class Rps < Sinatra::Base
  configure :development do 
    # register Sinatra::Reloader
  end

  
  get '/' do 
    erb :index
  end

  post '/registered' do
    @player_name = params[:player_name]
    erb :play
  end



  run! if app_file ==$0
end