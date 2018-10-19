require 'sinatra/base'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/names' do
  $name = params[:player_name]
  redirect '/play'
end

get '/play' do
  @name = $name
  erb :play
end

post '/decision' do
  @name = $name
  @player_choice = params[:player_choice]
  erb :decision
end


end
