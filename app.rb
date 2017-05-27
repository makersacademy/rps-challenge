require 'sinatra/base'

class Rps < Sinatra::Base

get '/' do
  erb :index
end

post '/names' do
  "Bert Vs. Ernie"
end

end
