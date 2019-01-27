require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params[:player_1]
    erb :play
  end

  run! if app_file == $0

end
