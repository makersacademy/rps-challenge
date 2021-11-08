require 'sinatra/base'
class RPS < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = params[:player]
    erb(:show)
  end

  run! if app_file == $0
end
