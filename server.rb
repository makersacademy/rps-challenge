require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    erb :index
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    @name_1 = params[:Name]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
