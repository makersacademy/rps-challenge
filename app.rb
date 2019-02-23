require 'sinatra'
require 'sinatra/base'

set :session_secret, 'super secret'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  

  run! if app_file == $0

end
