require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    $player = Player.new(params[:player_name])
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0

end