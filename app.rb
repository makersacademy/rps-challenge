require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  get '/result' do
    @player_1 = session[:player_1]
    erb(:result)
  end

  # this will start the server automatically if the app.rb file is run in the
  # command line with `ruby app.rb` :)
  run! if app_file == $0
end
