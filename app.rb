require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/setup' do
    weapons = ['Scissors', 'Paper', 'Rock']
    weapons.concat(['Lizard', 'Spock']) if params["mode"].to_i > 1
    players = [ Player.new(name: params["player_1_name"]), Player.new(name: params["player_2_name"])]
    @game = Game.create(players: players, weapons: weapons)
    redirect '/custom' if params["mode"].to_i > 2
    redirect '/play'
  end

  post '/move' do
    @game = Game.instance
    @game.player_1.weapon = params['weapon']
    redirect '/results' if @game.round_complete?
    @game.rotate
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb view_with_scoring_matrix('play')
  end

  get '/results' do
    @game = Game.instance
    @game.rotate
    erb :results
  end

  get '/custom' do
    @game = Game.instance
    erb view_with_scoring_matrix('add_weapons')
  end

  post '/add_weapons' do
    @game = Game.instance
    @game.add_weapons(weapon_1: params['weapon_1'], weapon_2: params['weapon_2'])
    redirect '/play'
  end

end

def view_with_scoring_matrix(view)
  body_partial = ERB.new(File.new("./views/#{view}.erb").read).result(binding)
  scoring_matrix_partial = ERB.new(File.new("./views/scoring_matrix.erb").read).result(binding)

  template = ERB.new <<-EOF
    <%= body_partial %>
    <%= scoring_matrix_partial %>
  EOF
  template.result(binding)
end
