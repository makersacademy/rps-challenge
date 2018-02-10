require 'sinatra/base'

class Rps < Sinatra::Base

 enable :sessions
 set :public_folder, File.dirname(__FILE__) + '/static'

 get '/' do 
  erb(:index)
 end

 post '/names' do 
  $player_name = params[:name] 
  redirect '/play'
 end

 get '/play' do 
  erb(:play)
 end

  run! if app_file == $0
end