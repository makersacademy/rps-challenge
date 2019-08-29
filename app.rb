require 'sinatra/base'
require './lib/user.rb'
require './lib/cpu.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do
    user = User.new(params[:player])
    cpu = CPU.new
    game = Game.create(user, cpu)
    redirect '/play'
  end

  post '/game' do
    game = Game.instance
    input = [params[:rock], params[:paper], params[:scissor]].join
    game.user.get_input(input)
    redirect '/play'
  end

  get '/play' do
    game = Game.instance
    @player = game.user.name
    @user_input = game.user_input
    @cpu = game.cpu_input
    @result = game.result
    @player_score = game.user.score
    @cpu_score = game.cpu.score
    erb(:play)
  end

  run! if app_file == $0
end
