require 'sinatra'
require 'sinatra/base'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base

  enable :sessions

  before do
  @game = Game.instance
end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/rock'do
    erb :rock
  end

  get '/paper' do
    erb :paper
  end

  get '/scissors' do
    erb :scissors
  end



  run! if app_file == $0

end
