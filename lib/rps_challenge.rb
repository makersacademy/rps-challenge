require 'sinatra/base'

class Rps_Challenge < Sinatra::Base

  set :views, Proc.new { File.join(root, "views") }
  enable :sessions

  get '/' do
    erb :index
  end



end