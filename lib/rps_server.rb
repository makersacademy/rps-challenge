require 'sinatra/base'

class RPS < Sinatra::Base
  set :public_folder, Proc.new { File.join('..','public') }

  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
