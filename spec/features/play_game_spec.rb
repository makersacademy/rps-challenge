require 'spec_helper'

feature 'game in play' do

  scenario 'see the options' do
    sign_in_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'choose an option' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'You chose Paper'
  end
end
