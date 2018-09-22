require 'sinatra/base'

class ChoiceGame < Sinatra::Base

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
