require 'spec_helper'

RSpec.feature "entering players", :type => :feature do 
  scenario "player_1 is a player and player_2 is a bot" do 
    sign_in_one_player
    expect($game.player_2).to be_an_instance_of Bot
  end

  scenario "has only 1 form for player1 when Bot is player 2" do 
    sign_in_one_player
    expect(page).not_to have_content("player_2_weapon")
  end
end
