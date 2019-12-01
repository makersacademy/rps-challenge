require 'sinatra'

class Rps < Sinatra::Base
  enable :sessions

  enable :sessions

  get '/test' do
     'Testing infrastructure working!'
   end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    erb(:play)
  end

  get '/play' do
   @player_name = session[:player_name]
   @choice = session[:choice]
   erb(:play)
  end

 post '/play' do
   session[:choice] = params[:choice]
   redirect('/play')
 end
 run if app_file == $0
end
