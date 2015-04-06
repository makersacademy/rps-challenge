require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :views, settings.root + '/../views/'
   set :public_folder, settings.root + '/../public/'

  get '/' do
    erb :welcome
  end

  get '/registration' do
    erb :registration
  end

  get '/game' do
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
