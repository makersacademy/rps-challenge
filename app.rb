require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/register' do
    erb(:register)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
