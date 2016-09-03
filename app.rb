require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @weapon = session[:weapon]
    @cpu_weapon = session[:cpu_weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    session[:cpu_weapon] = (Computer.new.choice).capitalize
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
