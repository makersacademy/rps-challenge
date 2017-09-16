require 'sinatra/base'

class RPS < Sinatra::Base

enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  redirect '/choose'
end

get '/choose' do
  @player_1_name = session[:player_1_name]
  erb(:choose)
end

post '/choice' do
  session[:player_1_choice] = params[:player_1_choice]
  redirect '/result'
end

get '/result' do
  @player_1_choice = session[:player_1_choice]
  erb(:result)
end


run! if app_file == $0

end
