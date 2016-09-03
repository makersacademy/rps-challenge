require 'sinatra/base'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/choice'
  end

  get '/choice' do
    @name = session[:name]
    erb :choice
  end

  run! if app_file == $0

end
