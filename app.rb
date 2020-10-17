require 'sinatra/base'

class PlayerName < Sinatra::Base
enable :sessions

get '/' do
  erb(:home_page)
end

post '/names' do
  "hello"
  session[:player_name] = params[:player_name]
  redirect '/play'
end

get '/play' do
  @player_name = session[:player_name]
  erb(:play)
end

run! if app_file == $0
end
