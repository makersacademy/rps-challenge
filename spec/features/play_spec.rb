require 'spec_helper'

feature 'The marketeer will be playing rock, paper and scissors' do 
  scenario 'the user sees their options' do
    sign_in_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'the user chooses their action' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You selected Rock")
  end

  scenario 'the computer chooses its action' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("Your opponent selected Rock")
  end
end
