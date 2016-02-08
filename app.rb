require 'sinatra/base'
require_relative 'lib/weapons'


class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    unless params[:choice].nil?
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
