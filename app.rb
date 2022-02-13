require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/computer'

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
    #@shape = session[:shape]
    
    erb :view_name
end

post '/view_option' do
   # @rps = params[:Rock]
   session[:shape] = params[:shape]
   session[:computer_move] = Computer.new.computer_choice
   redirect '/submit_move'
end

get '/submit_move' do
  @game = Game.new(session)
   @player = @game.name
   @shape = @game.player_shape
   @random_shape = @game.computer_move
   @outcome = @game.gameoutcome
   erb :result
  
end

    run! if app_file == $0
end