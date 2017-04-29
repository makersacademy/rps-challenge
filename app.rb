require 'sinatra'

class Game < Sinatra::Base

  get '/' do
    erb(:home)
  end

run! if app_file == $PROGRAM_NAME
end
