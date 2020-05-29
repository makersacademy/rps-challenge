require 'sinatra'


class RPSGame < Sinatra::Base

  get '/' do
    erb(:name)
  end

  run! if app_file == $0
end
