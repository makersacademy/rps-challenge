require 'sinatra/base'
require './lib/game.rb'


class Rps < Sinatra::Base
  enable :sessions

get '/' do
erb(:choice_game)
end

post '/versus_computer' do
redirect '/versus_computer'
end

  get '/versus_computer' do
    erb(:form)
  end

  post '/name' do
    # p params

    session[:player_name] = params[:player_name]
    redirect '/name'
  end

  get '/name' do
    @player_name = session[:player_name]
    erb(:display)
  end

  post '/receive_RPS' do
    session[:response] = params[:response]
    redirect '/result'

  end

  get '/result' do
    @game = Game.new
    @game.player_choice = session[:response]
    @player_selection = @game.player_choice

    @game.computer_selection = @game.random_response
    @computer_selection = @game.computer_selection


    # @computer_selection = game.random_response
    erb @game.result
  end
end
