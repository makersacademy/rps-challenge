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
    @game = Game.instance
    input = [params[:rock], params[:paper], params[:scissor]].join
    user_input = @game.user.get_input(input)
    session[:cpu_input] = @game.cpu.random
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player = @game.user.name
    @user_input = @game.user_input
    @cpu = session[:cpu_input]
    @result =  @game.result(@user_input, @cpu)
    erb(:play)
  end

  run! if app_file == $0
end
