require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/choice' do
    @choice = params[:choice]
    computer = Computer.new
    @comp_choice = computer.comp_choice
    erb :choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
