require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb(:homepage)
  end

  get '/registration' do
    erb(:registration)
  end

  push '/game' do
    erb(:game)

  # start the server if ruby file executed directly
  run! if app_file == $0
end
