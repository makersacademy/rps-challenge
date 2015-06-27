require 'sinatra/base'

class RSP < Sinatra::Base
  # enable :sessions
  enable :static

  set :views, proc { File.join(root, '..', 'views')}
  set :public_folder, Proc.new { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  get '/start' do
    @name = params[:name]
    redirect "/error" if @name == ""
    erb :start
  end

  get '/error' do
    @name = params[:name]
    redirect "/error" if @name == ""
    erb :error
  end

  get '/new_game' do
    erb :new_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
