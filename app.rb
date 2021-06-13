require 'sinatra/base'
require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    'Rock paper scissors!'
  end

  run! if app_file == $0
end