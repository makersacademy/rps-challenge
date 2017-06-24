require 'sinatra/base'


class Rpr < Sinatra::Base
  enable :sessions

  get '/' do
    'Rock Paper Scissors'
    erb :index
  end

  post '/name_in_lights' do
    $player = 'example'
      erb :name_in_lights
    end


  get '/fight_page' do
    'list of battle'
    erb :fight_page
  end
end
# Player.new(params[:example])
