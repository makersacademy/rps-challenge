require 'sinatra'

class RockPaperScissors < Sinatra::Base
  get '/'do
   'Hello RPS!'
 end

 run! if app_file == $0
end
