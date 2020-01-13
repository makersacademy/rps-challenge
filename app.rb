require 'sinatra'

class RPS < Sinatra::Base

attr_reader :player

get '/' do
  erb :index
end

post '/play' do
  $player = params[:name]
  redirect '/play'
end

get '/play' do
  @player = $player
  erb :play
end

end
