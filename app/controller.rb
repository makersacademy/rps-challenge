require 'Sinatra'

class RPSWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/store_name' do
    $player_name = params[:name]
    redirect '/selection_screen'
  end

  get '/selection_screen' do
    erb :selection_screen
  end
end
