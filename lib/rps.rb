require 'sinatra/base'



class RPSchallenge < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  get '/game' do
    erb :game
  end
 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
