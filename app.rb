require 'sinatra/base'


class Rps < Sinatra::Base
  enable :sessions

get ('/') do
  erb(:index)
end

post ('/name') do
  session[:player_name] = params[:player_name]
  redirect('./play')
end

get ('/play') do
  @player_name = session[:player_name]
  erb(:play)
end

post ('/choice') do
  session[:choice] = params[:choice]
  redirect('./result')
end

get ('/result') do
  @choice = session[:choice]
  erb(:result)
end

end
