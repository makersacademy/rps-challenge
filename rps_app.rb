
require 'sinatra/base'
require './lib/pc_player'
require './lib/game'
require './lib/player'


class RPSApp < Sinatra::Base

  get '/' do
    $game = nil
    erb :index
  end

  get '/pvc' do
    erb :pvc
  end

  post '/pvc_name' do
    $game = Game.new(Player.new(params[:player_name]), PCPlayer.new)
    redirect to '/pvc'
  end

  post '/pvc_choice' do
  #   game.pvc_player.choice params[:choice]
     redirect to '/pvc'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end





#One popular five-weapon expansion is "rock-paper-scissors-Spock-lizard", invented by Sam Kass and Karen Bryla,[79] which adds "Spock" and "lizard" to the standard three choices. "Spock" is signified with the Star Trek Vulcan salute, while "lizard" is shown by forming the hand into a sock-puppet-like mouth. Spock smashes scissors and vaporizes rock; he is poisoned by lizard and disproven by paper. Lizard poisons Spock and eats paper; it is crushed by rock and decapitated by scissors. This variant was mentioned in a 2005 article in The Times of London[80] and was later the subject of an episode of the American sitcom The Big Bang Theory in 2008 (as rock-paper-scissors-lizard-Spock).
