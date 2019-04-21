require 'sinatra/base'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/play' do
  @name = params[:name]
  erb :play
end

post '/result' do
  @player_choice = params[:player_choice]
  erb :result
end

run! if app_file == $0

end
