require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect('/play')
  end

  get '/play' do
    @name = $player.name
    erb(:play)
  end
end
