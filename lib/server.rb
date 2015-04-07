require 'sinatra/base'

class RPS < Sinatra::Base

set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    @name = params[:name]
    session[:name] = @name
    erb :homepage
  end

  post '/new_game' do
    @name = session[:name]
    erb :new_game
  end

  run! if app_file == $0
end
