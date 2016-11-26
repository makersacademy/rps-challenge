require "sinatra/base"

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @player = session[:name]
    erb(:play)
  end


  run! if app_file == $0

end
