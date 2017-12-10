require "sinatra/base"

class RPS < Sinatra::Base

  get "/" do
    erb(:index)
  end


# Start the server if App is executed directly via Ruby
run! if app_file == $0

end
