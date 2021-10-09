require 'sinatra/base'

# class Weapon 
#   get '/options' do 
#     erb :options
#   end
# end

class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do 
    @player_1_name = params[:player_1_name]
    erb :play
  end

  get '/options' do 
    erb :options
  end

  run! if app_file == $0
end


