require 'sinatra'
require 'sinatra/reloader'


class Rps < Sinatra::Application
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player]
    redirect('/welcome')
  end

  get '/welcome' do
    @player_name = session[:player_name]
    erb(:welcome)
  end
  
  run! if app_file == $PROGRAM_NAME
end  
