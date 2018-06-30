require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post "/play" do
   @player_name = params[:player_name]
   erb(:play)
 end

end
#run! if app_file == $0
