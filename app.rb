require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Rps < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

enable :sessions

get '/' do
  erb :index
end

post '/names' do
    $player1 = Player.new(params[:player1])
    #session[:player1] = params[:player1]
    redirect ('/view_name')
end

get '/view_name' do
    @player1 = $player1.name
    # @shape = session[:shape]
    erb :view_name
end

post '/view_option' do
   # @rps = params[:Rock]
   session[:shape] = params[:shape]
   redirect '/submit_move'
end

get '/submit_move' do
   @shape = session[:shape]
# instance var for winner

   erb :result
  
end


    run! if app_file == $0
end