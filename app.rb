require 'sinatra/base'

class Rps < Sinatra::Base

get '/' do
  erb :index
end

get '/names' do
  "Ian"
end

end
