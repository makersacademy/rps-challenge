require "sinatra/base"

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player =  params[:name]
    $player = Player.new(params[:name])
    redirect to('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  run! if app_file == $0

end
