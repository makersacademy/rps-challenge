require 'spec_helper'

RSpec.feature "entering players", :type => :feature do 
  scenario "player_1 is a player and player_2 is a bot" do 
    sign_in_one_player
    expect($game.player_2).to be_an_instance_of Bot
  end
end