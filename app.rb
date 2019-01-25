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
    erb :rps
  end

  post '/declare_winner' do
    session[:winner] = session[:name]
    redirect '/declare_winner'
  end

  get '/declare_winner' do
    erb :declare_winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
