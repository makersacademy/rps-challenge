require 'sinatra/base'

class RPSGame < Sinatra::Base

get '/' do
  'Testing infrastructure works'
end

run! if app_file == $0

end
