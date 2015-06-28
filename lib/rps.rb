require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  set :views, proc { File.join(root, '..','views') }

  # start the server if ruby file executed directly
  run! if app_file == $0


  get '/' do
  	@name = params[:name]
    erb :index
  end

  get '/make_choice' do
    @name = params[:name]
    erb :make_choice
  end
end
