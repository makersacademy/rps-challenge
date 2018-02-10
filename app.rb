require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    'Can you defeat the bot? BO5!'
  end

  run! if app_file == $0
end