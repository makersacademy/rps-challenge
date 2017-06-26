require 'sinatra/base'
require './lib/battle'


class Rpr < Sinatra::Base
  enable :sessions
  get '/' do    'Rock Paper Scissors'
    erb :index
  end


  post '/name_in_lights' do
    $player = params[:example]
      erb :name_in_lights
    end

  get '/rock_fight' do
    'list of battle'
    $battle = (Battle.new).selection
    erb :rock_fight
  end

   get '/paper_fight' do
     'list of battle'
     erb :paper_fight
   end

   get '/scissors_fight' do
     'lsit of battle'
     erb :scissors_fight
   end
end
# Player.new(params[:example.name])
