require 'sinatra/base'

class RPSGame < Sinatra::Base

  get '/' do
    erb :welcome
  end

  run! if app_file == $PROGRAM_NAME
end
