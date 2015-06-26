require 'sinatra/base'

class RpsApp < Sinatra::Base

  set :views, proc {File.join(root,'..','views')}

  get '/' do
    erb :index
  end

  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
