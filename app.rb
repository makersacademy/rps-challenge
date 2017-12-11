require 'sinatra/base'
require './lib/computer.rb'
require './lib/game.rb'

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
  session[:player_weapon] = params[:player_weapon]
  redirect '/result'
end

get ('/result') do
  @player_weapon = session[:player_weapon]
  

end


run! if app_file == $0
end
