require 'sinatra'
require './lib/player'


# class RPS < Sinatra::Base
get '/' do
  erb :index
end

post '/result' do
  @player_1_name = params[:player_1]
  @weapon = params[:options]
  @player_1 = Player.new(@player_1_name, @weapon)
  erb :result
end

# end
