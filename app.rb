require 'sinatra/base'
require_relative './lib/player'


class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player1 = Player.new(params[:player_1_name])
    redirect "/play"
  end

  get "/play" do
    @player1 = $player1
    erb(:play)
  end

  get "/attack" do
    @player1 = $player1
    @weapons = [params[:rock],params[:paper], params[:scissors]]
    erb(:attack)
  end

  run! if app_file == $0

end
