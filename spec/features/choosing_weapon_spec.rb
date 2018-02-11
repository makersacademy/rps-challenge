require 'spec_helper'

RSpec.feature "choosing weapon", :type => :feature do 
  scenario "displays chosen weapon" do 
    weapons_chosen
    expect(page).to have_content "Spock has chosen rock"
  end

  scenario "player chooses but bot doesn't" do 
    weapons_player_and_bot

    expect(page).to have_content "Bot has chosen"
  end
end