require 'sinatra'
# require 'rack'

class Rps < Sinatra::Base

  #enable :player_choice
  #enable :computer_choice
  #options = [ :Rock, :Paper, :Scissors ].sample
  #$computer = options

  get '/' do
    "Hello Player!"
    erb(:index)
  end

  post '/name' do
    @player = params[:player] # || "Player"
    #@computer = %w[Rock Paper Scissors].sample
    erb(:play)

    #redirect to '/play'
  # post '/play' do

  end

  post '/play' do
    options = [ :Rock, :Paper, :Scissors ].sample
    $computer = options
    erb(:final)

  end

  run! if app_file == $0
end
