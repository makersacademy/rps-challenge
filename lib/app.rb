require 'sinatra/base'
require_relative 'game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    redirect to "/sign-in"
  end

  get '/sign-in' do
    erb :sign_in
  end

  post '/assign' do
    puts params[:name]
    Game.create(Player.new(params[:player1_name]))
    redirect to "/play"
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/moves' do
    @game = Game.instance
    erb :moves
    redirect to '/draw' if @game.draw?
    redirect to '/win'
  end

  get '/draw' do
    erb :draw
  end

  get '/win' do
    @game = Game.instance
    erb :win
  end

  run! if app_file == $0

end
