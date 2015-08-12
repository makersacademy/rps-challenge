require 'sinatra/base'
# require 'local'

class RpsWeb < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions

  get '/' do
    'Hello RpsWeb!'
  end

  get '/' do
    # 'Hello RpsWeb!'
    erb :index
  end

  get '/name_set' do
    erb :enter_name
  end

  get '/play' do
    @name = params[:name]
    erb :hello
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
