require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/play' do
    @name = params[:name]
    erb :play
  end

  post '/results' do
    @choice = params[:choice]
    @computers_move = Computer.new.move
    if @choice == @computers_move 
      @result = 'draw'
    end
    p @computers_move
    p params
    p @result
    erb :results
  end

  run! if app_file == $0
end
