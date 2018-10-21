require 'sinatra'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Application
enable :sessions

  get '/' do
    erb :index
  end

  post '/greeter' do
    $name = params[:name]
    redirect '/choice'
  end

  get '/choice' do
    erb :choice
  end

  post '/selection' do
    $selection = params[:selection]
    redirect '/outcome'
  end

  get '/outcome' do
    @outcome = Game.new($selection).outcome
    erb :outcome
  end
end
