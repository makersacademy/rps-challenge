require "sinatra/base"
require_relative "./lib/player.rb"

class RPS_web < Sinatra::Base
enable :sessions

get '/' do
  erb(:index)
end

post '/player_name' do
  session[:player_name] = params[:name]
  # session[:player] = Player.new(params[:name])
  # session[:name] = session[:player].name
  redirect('/play')
end

get '/play' do
  @name = session[:player_name]
  erb(:player)
end

post '/first' do
  erb(:first)
end

post '/first_play' do
  @player = Player.new(@name)
  session[:choice] = params[:choice].to_sym
  # @move = session[:move]
  # session[:status] = @player.player_status
  redirect('/first_result')
end

get '/first_result' do
  @name = session[:player_name]
  # @player = Player.new(@name)
  @choice = session[:choice]
  erb(:first_result)
end

post '/second' do
@name = session[:player_name]
@move = session[:move]
# @status = session[:status]
erb(:second)
end


run! if app_file == $0
end
