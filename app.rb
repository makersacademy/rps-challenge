require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    'Rock, Paper, Scissors'
  end

  run! if app_file == $0
end
