require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

enable :sessions

get '/' do
  erb :index
end

post '/names' do
    session[:player1] = params[:player1]
    redirect ('/view_name')
end

get '/view_name' do
    @player1 = session[:player1]
    @shape = session[:shape]
    erb :view_name
end

post '/view_option' do
   # @rps = params[:Rock]
   session[:shape] = params[:shape]
   redirect '/submit_move'
end

get '/submit_move' do
   erb :submit_move
end


    run! if app_file == $0
end