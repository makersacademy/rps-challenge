require 'spec_helper'

RSpec.feature "player names", :type => :feature do 
  scenario "displays player names after signing in" do 
    sign_in_two_players
    expect(page).to have_content "Spock and Kirk, prepare to fire your weapons!"
  end
end
