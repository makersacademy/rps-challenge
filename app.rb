require 'sinatra/base'
require './lib/user'
require './lib/game'

class RPS < Sinatra::Base
attr_reader :name

before do
  @game = Game.instance
end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(User.new(params[:username]))
    redirect to('/rps')
  end

  get '/rps' do

    erb :rps
  end

  post '/weapon' do
    @game.user.choose_weapon(params[:choice])
    redirect to('/result')
  end

  get '/result' do
    @game.determine_winner
    erb :result
  end


  run! if app_file == $0
end
