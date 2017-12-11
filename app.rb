require 'sinatra/base'

class RPSApp < Sinatra::Base
  enable :sessions

get ('/') do
  erb(:index)
end

post ('/name') do
  session[:player_name] = params[:player_name]
  redirect '/begin'
end

get ('/begin') do
  @player_name = session[:player_name]
  erb(:begin)
end

get ('/play') do
  @player_name = session[:player_name]
  erb(:play)
end

post ('/play/new') do
  redirect '/result'
end

get ('/result') do
  
end


run! if app_file == $0
end
