require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $name = params[:name]
    $p2name = params[:p2name]
    erb :rps
  end

  post '/result' do
    @rps = params[:rps]
    erb :result
  end

end
