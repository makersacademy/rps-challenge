require 'sinatra/base'

class RPS < Sinatra::Base

  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:name])
  end

  run! if app_file == $0
end


