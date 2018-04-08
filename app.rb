require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    @name = params[:name]
    erb :index
  end

  run! if app_file == $0
end
