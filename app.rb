require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = params[:player_name]
    erb(:play)
  end

  post '/result' do
    @choice = params[:player_choice]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
