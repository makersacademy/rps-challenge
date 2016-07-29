require 'spec_helper'


SEED = 124134

feature 'playing the game' do
  scenario 'see options for weapons' do

    sign_in

    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'be able to choose a weapon' do

    sign_in
    click_button 'Rock'

    expect(page).to have_content("You have chosen: Rock")
  end

  scenario "can see computer's weapon of choice" do

    srand(SEED)
    sign_in
    click_button 'Rock'

    expect(page).to have_content("The computer has chosen: Rock")
  end


end
