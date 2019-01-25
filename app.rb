require 'sinatra/base'

# Handle http requests
class RPSServer < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/rps' do
    session[:name] = params[:name]
    redirect '/rps'
  end

  get '/rps' do
    @name = session[:name]
    erb :rps
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
