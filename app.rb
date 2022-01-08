require 'sinatra/base'
require 'sinatra/reloader'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload 'lib/index.erb'
    also_reload 'lib/play.erb'
  end

  # our routes would go here
  get '/' do 
    erb(:index)
  end

  post '/names' do
    p params
    @name1 = params[:name1]
    erb(:play)
  end 
  
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end