require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  
  get "/" do
    erb :index
  end

  post "/begin" do
    redirect "/choose"
  end

  get "/choose" do
    erb :choose
  end

  run! if app_file == $0

end
