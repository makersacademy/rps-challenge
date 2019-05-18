require 'sinatra/base'

class Rps < Sinatra::Base
  get "/" do
    "Welcome to Rock, Paper, Scissors!"
  end

  run! if app_file == $0
end
