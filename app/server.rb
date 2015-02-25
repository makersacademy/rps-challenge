require 'sinatra/base'
require './lib/game'
require './lib/marketer'

class RockPaperScissors < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :new_game
  end

  get '/player' do
    @name = params[:name]
    erb :player
  end


    post '/player' do
    @name = params[:name]
    session[:player] = @player
    erb :arena
  end

  get '/arena' do
    @name = params[:name]
    session[:player] = @player
    erb :arena
  end

  post '/game' do
  @name = params[:name]
  session[:player] = @player
  erb :result
end

  post '/result' do
  @name = params[:name]
  @player = session[:player]
  @computer = game.random_answer
  @player = marketer.chosen_option(params[:game])
  @result = game.result(@player, @computer)
  erb :result
end

end