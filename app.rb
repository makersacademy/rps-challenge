require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
  @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name]), Player.new(:computer))
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    puts "is params[rps] actually a string? #{params[:rps].is_a?(String)}"
    @game.p1.choice = params[:rps]
    @game.p2.choice = @game.p2.defend # computer weapon randomly generated
    erb(:result)
  end

  run! if app_file == $0
end
