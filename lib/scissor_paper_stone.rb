require 'sinatra/base'

class ScissorPaperStone < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end
  
  run! if app_file == $0
end