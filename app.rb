require 'sinatra/base'
class RPS < Sinatra::Base
  enable :sessions

  get('/') do
    erb(:splash)
  end

  get('/play') do
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  post('/names') do
    session[:player_1_name] = params[:player_1_name]
    redirect('/play')
  end

end
