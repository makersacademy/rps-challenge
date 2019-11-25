require 'sinatra/base'
require './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  class Options
  options = [:rock, :paper, :scissors]

  def choices
    options.sample
  end
end

  post '/result' do
    session[:player_1] = params[:player_1]
    session[:cpu] = params[:cpu]
    redirect '/play'
  end
end
#   get '/play' do
#     @player_1 = session[:player_1]
#     @cpu = session[:cpu]
#     erb :play
# end
#   post '/names' do
#     erb :play
#   end
# get '/result' do
#     @player_1 = session[:player_1]
#     @cpu = session[:cpu]
#   erb :result
# end
# run! if app_file == $0
# end
# post '/names' do
#   $player_1 = Player.new(params[:player_1])
#   $cpu = Player.new(params[:cpu])
#   redirect '/play'
# end
get '/play' do
  @player_1 = $player_1.name
  @cpu = $cpu.name
  erb :play
end
