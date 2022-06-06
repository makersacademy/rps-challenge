require 'sinatra/base'
# require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader

  get '/intro' do#this goes to the homepage
    erb(:index)#form to sign in name
  end

  get '/start' do
    erb(:play)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]#saving name
    erb(:play)
  end

  post '/intro' do
    @object1 = params[:object1]#saving name
    erb(:play2)
  end
  
  run! if app_file == $0
end