require 'spec_helper'

feature 'Choose a weapon' do
  scenario 'A user selects rock as their weapon' do
    enter_player_name
    click_button "Rock"
    expect(page).to(have_content("You have chosen Rock"))
  end

end
