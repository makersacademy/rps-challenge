require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post'/name' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

  run! if app_file == $0

end
