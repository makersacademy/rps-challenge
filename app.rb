require 'sinatra'
require_relative './lib/game'

get '/' do
    erb(:index)
end

post '/name' do
  $player = params[:player]
  redirect to '/print_name'
end

get '/print_name' do
  @player = $player
  erb(:print_name)
end
