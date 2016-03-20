require 'sinatra/base'
require './lib/randomiser'

class Rps < Sinatra::Base

  get '/' do
    erb(:name_entry)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb(:game_start)
  end

  post '/result' do
    @your_choice = params[:attack]
    @computer_choice = Randomiser.new.computer
    
    erb(:result_page)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
