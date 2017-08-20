require 'sinatra'
#require '../../web_helpers'

class Rps < Sinatra::Base

  get '/' do
    "Hello Player!"
    erb(:index)
  end

  post '/name' do
    @player = params[:player]
    erb(:play)
  end

  get '/play/:players_choice' do
    options = [:Rock, :Paper, :Scissors].sample
    $computer = options
    erb :final, :locals => {"players_choice" => params[:players_choice]}
  end
  run! if app_file == $0
end
