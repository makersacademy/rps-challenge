require 'sinatra/base'

class RPS < Sinatra::Base

 enable :sessions

 get '/' do
  erb :index
 end

 post '/startpage' do
  session[:player_name] = params[:player_name]
  redirect '/play'
 end

 get '/play' do
   @player = session[:player_name]
   erb :play
 end

post '/rock' do
  @player = session[:player_name]
  erb :rock
end

run! if app_file == $0
end
