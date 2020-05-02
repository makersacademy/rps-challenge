require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do 
    erb :index
  end

  post '/gametype' do 
    $gametype = params[:gametype]
    redirect '/names'
  end

  get '/names' do 
    @gametype = $gametype
    erb :names
  end

end