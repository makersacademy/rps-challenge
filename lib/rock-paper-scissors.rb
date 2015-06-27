require 'sinatra/base'


class RockPaperScissors

  set :views, proc { File.join(root, '..', 'views') }

  run! if app_file == $0

end
