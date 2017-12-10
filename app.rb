require "sinatra/base"

class RPS < Sinatra::Base

  get "/" do
    erb(:index)
  end

  get "/name" do
    "name entered"
  end


# Start the server if App is executed directly via Ruby
run! if app_file == $0

end
