require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPSWeb < Sinatra::Base

get '/' do
  erb(:index)
end

post '/name' do
  @player_name = params[:player_name]
  redirect '/welcome'
end

get '/welcome' do
  erb(:welcome)
end

run! if app_file == $0
end
