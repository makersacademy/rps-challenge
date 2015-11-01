require 'sinatra/base'
Dir["./lib/*.rb"].each {|file| require file }

class RPSWeb < Sinatra::Base

  get '/' do
    erb :registration
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/weapon' do
    $player.weapon=(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    @comp_wp = Computer.weapon
    @player_wp = $player.weapon
    erb Game.play(@comp_wp, @player_wp)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
