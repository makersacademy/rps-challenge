require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions
  set :sessions, 'my username'
  run! if app_file == $0

  get '/' do
    'Please enter your name:'
    erb(:index)
  end

  post '/registered' do
    $p_name = params[:Player_name]
    redirect('/play')
  end

  get '/play' do
    @p_name = $p_name
    erb(:play)
  end

end
