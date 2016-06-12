require 'sinatra/base'
require './lib/game'
require './lib/startup'
require './lib/player'


class RPSApp < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    Game.create(Startup::WEAPONS)
    erb(:index, :layout => :layout)
  end

  post '/enter-name' do
    weapon = Startup::WEAPONS.select { |e| e.name == params[:weapon] }[0]
    @player_1 = Player.new(params[:name], weapon)
    @game.add_player(@player_1)
    redirect to '/play'
  end

  get '/play' do
    erb(:play, :layout => :layout)
  end

  run! if app_file == $PROGRAM_NAME
end
