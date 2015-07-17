require 'sinatra/base'

class RPSchallenge < Sinatra::Base 
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    @name = params[:name]
    erb :index
  end

  get '/playing' do
    @choice = params[:Option]
    erb :playing
  end

  run! if app_file == $0
end