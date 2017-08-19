require 'sinatra/base'
require 'shotgun'

class MyApp < Sinatra::Base
  get '/' do
    "Hello, world!"
    erb(:name_form)
  end

  post '/name' do
    @name = params[:name]
    redirect '/rps'
  end

  get '/rps' do
    erb(:rps)
  end

  get '/rock' do
    erb(:rock)
  end



  run! if app_file == $0
end
