require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/choose' do
    @player_1 = session[:player_1]
    redirect('/outcome')
  end

  get '/outcome' do
    @player_1 = session[:player_1]
    erb(:outcome)
  end

  run! if app_file == $0
end
