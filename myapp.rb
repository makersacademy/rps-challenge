require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = params[:name]
    erb(:play)
  end

  # get '/play' do
  #   erb(:play)
  # end

  run! if app_file == $0

end
