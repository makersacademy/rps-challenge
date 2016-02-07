require 'sinatra/base'
require_relative 'lib/weapons'

class Rps < Sinatra::Base
  enable :sessions

  #def initialize
  #  @game = Game.new
  #end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    if !params[:choice].nil?
      #result = @game.play(params[:choice])
      computer = Weapons.new(['rock', 'paper', 'scissors'].sample)
      choice = Weapons.new(params[:choice])
      result = 'tied'
      result = 'won' if choice.beats?(computer)
      result = 'lost' if computer.beats?(choice)
      session[:result] = "The result is .... You #{result}"
    end
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end