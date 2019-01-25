require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get "/" do
    erb(:enterplayer)
  end
  post "/registername" do
    session['player1name'] = params['player1name']
    redirect '/match'
  end
  get "/match" do
    @player1name = session['player1name']
    erb(:match)
  end
  run! if app_file == $0
end
