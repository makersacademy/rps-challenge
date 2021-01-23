require 'sinatra/base'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @player = params[:player]
    erb :play
  end

  get '/result' do
    @computer = Computer.new
    @game = Game.new(params[:choice], @computer.computer_weapon)
    @result = @game.result
    erb :result
  end

  run! if app_file == $0
end
