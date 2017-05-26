require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

enable :sessions

get '/' do
  "Hello world!"
end

run! if app_file == $0
end
