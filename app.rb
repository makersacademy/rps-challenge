require 'sinatra/base'
class RPS < Sinatra::Base 
#   get '/' do
#     "Hello world"
#   end
  get '/' do
    erb :enter_names
  end
  post '/names' do
    $name = params[:Name]
    redirect '/names'
  end
  get '/names' do
    erb :letsplay
  end
end
