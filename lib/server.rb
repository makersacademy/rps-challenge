require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    session[:name] = params[:name] if params[:name]
    puts session.inspect
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
