require 'spec_helper'

feature 'Choose a weapon' do
  scenario 'A user selects rock as their weapon' do
    enter_player_name
    click_button "Rock"
    expect(page).to(have_content("Sophie has chosen Rock"))
  end

  scenario 'A user selects paper as their weapon' do
    enter_player_name
    click_button "Paper"
    expect(page).to(have_content("Sophie has chosen Paper"))
  end

  scenario 'A user selects scissors as their weapon' do
    enter_player_name
    click_button "Scissors"
    expect(page).to(have_content("Sophie has chosen Scissors"))
  end

end
