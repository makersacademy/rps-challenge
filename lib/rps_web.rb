require 'sinatra/base'

class RPSWeb < Sinatra::Base
  set :public_dir, Proc.new{File.join( root, '..', "public") }
  get '/' do

    erb :index
  end

  post '/game' do
    @name = params[:name]
    erb :game
  end








  # start the server if ruby file executed directly
  run! if app_file == $0
end
