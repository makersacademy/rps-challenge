require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    erb(:names)
  end

  # this will start the server automatically if the app.rb file is run in the
  # command line with `ruby app.rb` :)
  run! if app_file == $0
end
