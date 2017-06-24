
require_relative "./lib/player"

require 'sinatra'

class App < Sinatra::Base

  get '/' do
    "Hi world!"
    $player = Player.new("jas")
    redirect('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

end
