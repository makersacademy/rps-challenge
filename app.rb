require 'sinatra/base'

class RPS < Sinatra::Base
  enable(:sessions)

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to('/game')
  end

  get '/game' do
    "Hello #{session[:name]}!"
  end

  run! if app_file == $PROGRAM_NAME
end
