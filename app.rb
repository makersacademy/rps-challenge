require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = 'player_name'
    redirect('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

end
