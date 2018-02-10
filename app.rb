require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'



class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_1_name])
    @game = Game.create(player)
    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    erb(:play)
  end

  get "/attack" do
    @game = Game.instance
    @weapon = [params[:rock],params[:paper], params[:scissors]].select { |weapon| weapon != nil }
    erb(:attack)
  end

  run! if app_file == $0

end
