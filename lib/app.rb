require 'sinatra/base'
require 'capybara'
require_relative 'player'
require_relative 'game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/display'
  end

  get '/display' do
    p "hello"
    @game = $game
    p @game.player
    erb :display
  end

  run! if app_file == $0
end

# <%= @game.current_turn.name %>'s turn
#
# <%= @game.player_1.name %> vs. <%= @game.player_2.name %>
#
# <%= @game.player_1.name %>: <%= @game.player_1.hit_points %>HP
# <%= @game.player_2.name %>: <%= @game.player_2.hit_points %>HP
#
# <form action="/attack" method="post">
#   <input type="submit" value="Attack">
# </form>
