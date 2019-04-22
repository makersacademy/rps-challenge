require 'sinatra/base'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_1 = Player.new(params[:player_name])
    player_2 = ComputerPlayer.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/decide-winner' do
    @game.player_1.picks(params[:choice])
    @game.decide_winner
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
