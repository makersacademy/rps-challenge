require 'sinatra/base'
require './model/model.rb'

class Rps < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/play' do
     @name1 = params[:player_1]
     erb :play
  end

  post '/winner' do
    p @comp_selection = Comp.new.comp_selection
    p @player_selection = player_selection
    p comp = @comp_selection.to_sym
    p player = @player_selection.to_sym
    p @result = Rules::RULES[player][comp]
    erb :winner
  end


run! if app_file == $0

private
  def player_selection
    if
      params[:rock] != nil
      @choice = params[:rock]
    elsif
      params[:paper] != nil
      @choice = params[:paper]
    elsif
      params[:scissors] != nil
      @choice = params[:scissors]
   end
   @choice
 end


end
