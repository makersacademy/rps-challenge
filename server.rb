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
    if params[:Choice]
      erb :result
    else
      session[:Name] = params[:Name] if params[:Name]
      erb :game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
