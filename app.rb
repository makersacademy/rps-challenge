require 'sinatra/base'
require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect ('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  get '/hand' do
    erb(:hand)
  end

  # start the server when 'ruby app.rb' is executed in terminal
  run! if app_file == $0

end
