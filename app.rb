require 'sinatra/base'

class RockPaperScissorsApp < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/enter-name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  run! if app_file == $0
end
