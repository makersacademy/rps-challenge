require 'sinatra/base'

require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  post '/play' do
    @weapon = params[:weapon]
    erb(:weapon_page)
  end

  get '/play' do
  @player_name = session[:player_name]
  erb(:play)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
