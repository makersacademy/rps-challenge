require 'sinatra/base'

class Rps <Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do 
    name = params[:name]
    redirect '/move-select'
  end

  get '/move-select' do
    erb(:moveselect)
  end
end