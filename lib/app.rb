require 'sinatra/base'
require 'shotgun'

class RPS < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/names" do
    

end
