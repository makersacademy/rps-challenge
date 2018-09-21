require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/game')
  end

  get '/game' do
    @name = session[:name]
    erb(:game)
  end

  run! if app_file == $0

end
