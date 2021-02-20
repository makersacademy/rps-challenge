require 'sinatra'

class RockPaperScissors < Sinatra::Base
  configure do
    enable :sessions
    set    :session_secret, ENV['SESSION_SECRET']
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/name'
  end

  get '/name' do
    @name = session[:name]
    erb :name
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
