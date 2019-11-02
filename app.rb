require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/welcome' do
    @name = params[:name]
    erb(:welcome)
  end

  post '/play' do
    '<h1>Well played</h1>'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
