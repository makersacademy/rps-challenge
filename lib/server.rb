require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'comp'

class Rpsgame < Sinatra::Base
  enable :sessions
   set :views, proc { File.join(root, '..', 'views')}

  get '/' do
     erb :index
  end

  get '/request' do
     @name = params[:name]
     session[:name] = params[:name]
     @game = Game.new
     session[:game] = @game
     @player = Player.new(@name)
     session[:player] = @player
     @comp = Comp.new
     session[:comp] = @comp

     erb :new_game
   end

   get '/game' do
     @name = session[:name]
     erb :game
   end

   get '/result' do
     @player_choice = params[:choice]
     session[:choice] = params[:choice]
     session[:player].select1(session[:choice])
     session[:winner] = session[:game].play(session[:player], session[:comp])
     erb :result
   end







  # start the server if ruby file executed directly
  run! if app_file == $0
end
