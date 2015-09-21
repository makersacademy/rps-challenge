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
     erb :new_game
   end

   post '/request' do
     session[:name] = params[:name]
    #  @game = Game.new
     session[:game] = Game.new
    #  @player = Player.new(session[:name])
     session[:player] = Player.new(session[:name])
    #  @comp = Comp.new
     session[:comp] = Comp.new
     redirect '/game'
   end

   get '/game' do
     @name = session[:name]
     erb :game
   end

   post '/game' do
     session[:choice] = params[:choice]
     redirect '/result'
   end

   get '/result' do
     @player_choice = session[:choice]
     name = session[:name]
     session[:player].select1(session[:choice])
     session[:winner] = session[:game].play(session[:player], session[:comp])
     erb :result
   end







  # start the server if ruby file executed directly
  run! if app_file == $0
end
