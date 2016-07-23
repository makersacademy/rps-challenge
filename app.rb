require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/name' do
  $game = Game.new(params[:player_1_name])
  redirect '/play'
end

get '/play' do
  erb :play
end

post '/options' do
  $game.choice = params[:choice]
  redirect '/result'
end

get '/result' do
  erb :result
end

run! if app_file == $0

end
