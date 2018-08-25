require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  
  get "/" do
    erb :index
  end

  post "/begin" do
    $name = params[:name]
    redirect "/choose"
  end

  get "/choose" do
    @name = $name
    erb :choose
  end

  run! if app_file == $0

end
