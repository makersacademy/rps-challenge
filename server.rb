require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    erb :index
  end

  get '/game' do
    redirect '/'
  end

  post '/game' do
    @name_1 = params[:Name]
    # session[:Name] ||= @name_1
    session[:Name] = @name_1
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
