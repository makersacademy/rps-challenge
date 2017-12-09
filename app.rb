require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home_page
  end

  post '/play' do
    session[:Name] = params[:Name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:Name]
    erb :play
  end
  run! if app_file == $0
end
