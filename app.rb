require "sinatra"

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    session[:your_name] = params[:name]
    redirect('/game')
  end

  get '/game' do
    @your_name = session[:your_name]
    erb(:game)
  end

  run! if app_file == $0
end
