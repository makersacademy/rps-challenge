require 'spec_helper'
feature 'Options' do
  scenario 'the player can see options rock, paper and scissors' do
    visit('/options')
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'paper'
    expect(page).to have_content 'scissors'
  end

  scenario 'the player can choose the rock option' do
    visit('/options')
    click_link('rock')
    visit('/confirm_option')
    expect(page).to have_content 'You picked rock!'
  end
end
