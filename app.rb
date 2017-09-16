require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/rules'
  end

  get '/rules' do
      @name = session[:name]
      erb(:rules)
  end

  run! if app_file == $PROGRAM_NAME

end
