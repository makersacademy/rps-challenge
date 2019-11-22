require 'sinatra/base'

 class RPS < Sinatra::Base
   enable :sessions
   get '/' do
     erb :index
   end

post '/name' do
  session[:player] = params[:player]
  session[:computer] = params[:computer]
  redirect '/play'
end

get '/play' do
     @player = session['player']
     @computer = session['computer']
     erb :play
   end

   # get '/attack' do
   #      @player1 = session['player1']
   #      @player2 = session['player2']
   #
   #    end
   # get '/play' do
   #   erb :play
   # end
 end
