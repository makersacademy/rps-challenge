require "sinatra/base"
require_relative './lib/player.rb'

class RPS_web < Sinatra::Base
enable :sessions

get '/' do
  erb(:index)
end

post '/player' do
  session[:name] = Player.new(params[:name]).name
  redirect('/play')
end

get '/play' do
  @name = session[:name]
  erb(:player)
end

post '/first' do
  @name = session[:name]
  redirect('/second')
end

get '/second' do
session[:move] = (Player.new(session[:name])).player_move(params[:move])
erb(:first)
end

run! if app_file == $0
end
