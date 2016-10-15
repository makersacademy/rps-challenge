require 'sinatra/base'

class RPSWeb < Sinatra::Base

get '/' do
erb(:index)
end

run! if app_file == $0

end
