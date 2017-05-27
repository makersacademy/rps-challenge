require 'sinatra/base'

class Rps < Sinatra::Base

get '/' do
  "Hello!"
end

get '/secret' do
  "Try this page for size!"
end

end
