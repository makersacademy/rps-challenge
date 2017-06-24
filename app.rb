require 'sinatra/base'
require './docs/computer.rb'

class RPS < Sinatra::Base

attr_reader :player_name, :computer_choice

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/battle' do
    @player_choice = params[:move]
    @computer = Computer.new
    @computer_choice = @computer.choice
    erb :battle
  end

  run! if app_file == $0

end
