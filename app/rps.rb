require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = params[:name]
    @weapon = params[:weapon]
    erb(:play)
  end

  post '/result' do
    @weapon = params[:weapon]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
