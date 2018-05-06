require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    'Rock, paper, scissors'
  end

  # run! if app_file == $0

end
