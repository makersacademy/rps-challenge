require 'sinatra'

class App < Sinatra::Base


configure do
  enable :sessions
  set :session_secret, 'key'
end

get '/signin' do

  erb :signin

end



end
