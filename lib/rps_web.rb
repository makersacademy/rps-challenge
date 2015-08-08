require 'sinatra/base'
# require './game'

class RPS < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views') }
  set :public, proc { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  # post '/' do
  # 	@name = params[:name]
  # 	erb :index
  # end

  get '/gameplay' do
  	erb :gameplay
  end


  post '/gameplay' do
  	@name = params[:name]
  	erb :gameplay 
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
