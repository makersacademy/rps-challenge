require 'sinatra/base'
#
class RockPaperSissors < Sinatra::Base
# #
  enable :sessions
#
  get '/' do
    erb :index
  end

  post '/names' do
    p params
    session['player_1'] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session['player_1']
    erb :play
  end

run! if app_file == $0

end
