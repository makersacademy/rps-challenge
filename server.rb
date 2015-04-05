require 'sinatra/base'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



class RPS < Sinatra::Base



  get '/' do
    erb(:homepage)
  end

  get '/registration' do
    erb(:registration)
  end

  post '/game' do
    player_one = Player.new(params[:Name])
    player_two = Player.new('Computer')
    player_one.human_weapon=(params[:rps])
    player_two.computer_weapon
    game = Game.new(player_one, player_two)
    @result = game.play_game
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
