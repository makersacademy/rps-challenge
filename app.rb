require 'sinatra/base'
require './lib/game'
require './lib/gameitem'

class RPSGame < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @player_name = params[:name]
    Game.new(@player_name)
    erb :play
  end

  post '/results' do
    @player_name    = Game.instance.player_name
    @player_choice  = Game.instance.select_player_choice(params[:choice])
    @result         = Game.instance.decide_winner(@player_choice)
    @ai_choice      = Game.instance.ai_choice
    @result_string  =
    case @result
    when true then "#{Game.instance.player_name} wins!"
    when 0 then "It's a draw!"
    when false then "#{Game.instance.player_name} loses..."
    end
    erb :results
  end

  run! if app_file == $0
end
