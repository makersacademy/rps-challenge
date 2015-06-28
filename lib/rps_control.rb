require 'sinatra/base'
require_relative 'rps'

class RPSWeb < Sinatra::Base
enable :sessions
set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    session[:name] = params[:name]
    erb :new_game
  end

get '/result' do
  params[:choice]
end

end