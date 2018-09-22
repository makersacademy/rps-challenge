require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
get '/' do
  erb :index
end

get '/singleplayer' do
  erb :singleplayer
end

get '/singleplayer-game' do
  erb :singleplayer_game
end

post '/results' do
  redirect '/results'
end

get '/results' do
  erb :results
end
end
