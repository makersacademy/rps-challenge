require 'sinatra'
require './lib/player'


class App < Sinatra::Base


configure do

  enable :sessions
  set :session_secret, 'key'

end

get '/signin' do

  erb :signin



end

post '/playrps' do


  session[:playername] = params[:'playername']
  redirect '/playrps'

end

get '/playrps' do

  @player = Player.new(session[:playername])

  erb :rps


end



end
