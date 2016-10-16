require 'game'
require 'player'

def sign_in
  visit '/'
  fill_in 'player_name', with: 'Daisy'
  click_button 'Continue'
end

def sign_in_and_play_win
  sign_in
  Game.instance.instance_variable_get("@player_2")
  Game.instance.instance_variable_set("@player_2", Player.new('Robotnik'))
  Game.instance.instance_variable_get("@selections")
  Game.instance.instance_variable_set("@selections", ['Rock','Scissors'])
  visit '/result'
end

def sign_in_and_play_lose
  sign_in
  Game.instance.instance_variable_get("@player_2")
  Game.instance.instance_variable_set("@player_2", Player.new('Robotnik'))
  Game.instance.instance_variable_get("@selections")
  Game.instance.instance_variable_set("@selections", ['Rock','Paper'])
  visit '/result'
end

def sign_in_and_play_tie
  sign_in
  Game.instance.instance_variable_get("@player_2")
  Game.instance.instance_variable_set("@player_2", Player.new('Robotnik'))
  Game.instance.instance_variable_get("@selections")
  Game.instance.instance_variable_set("@selections", ['Rock','Rock'])
  visit '/result'
end
