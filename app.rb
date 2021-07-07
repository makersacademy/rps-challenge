require 'sinatra/base'
require './lib/player'

class Rps  < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/named-player' do
    $name = Player.new(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @name = $name
    erb(:play)
  end

  post '/game' do
    @name = $name
    @name.choose_weapon(params[:choice].downcase)
    @name.play_game
    redirect '/outcome'
  end

  get '/play-again' do
   @name = $name
   $name = Player.new(@name.name)
   redirect '/play'
 end

  get '/outcome' do
    @name = $name
    erb(:outcome)
  end



  run! if app_file == $0

end
