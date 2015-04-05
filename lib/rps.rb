require 'sinatra/base'

class Rps < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/game' do
    @name = params[:first_name]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
