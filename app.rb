require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    'Rock Paper Scissors'
  end

  run! if app_file == $0
end
