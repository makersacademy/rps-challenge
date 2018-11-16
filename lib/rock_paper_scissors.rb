require 'sinatra/base'

class RockPaperScissors < Sinatra::Application

  get '/' do
    erb(:index)
  end

  post '/' do
    @name = params[:player_name]
    erb(:choice)
  end

end
