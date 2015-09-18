require 'sinatra/base'

class RpsWeb < Sinatra::BASE
  set :views, proc { File.join(root, '..', 'views') }


  run! if app_file == $0
end
