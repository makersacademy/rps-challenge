require 'sinatra/base'

enable :sessions

class RPSWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  run! if app_file == $0
end
