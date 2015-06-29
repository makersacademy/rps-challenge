require 'sinatra/base'

class RPS < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views') }

  get '/' do
  	erb :index
  end

	post '/' do
		@user = params[:name]
    if @user == nil or @user == ''
      erb :index
    else
      erb :play
    end
  end

  get '/play' do 
  	erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
