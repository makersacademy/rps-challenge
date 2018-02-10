require 'sinatra/base'


class Game < Sinatra::Base

set :public_folder, File.dirname(__FILE__) + '/static'

  get "/" do
    erb :index
  end






run! if app_file == $0

end
