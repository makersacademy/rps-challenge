require 'spec_helper'

feature 'play game of rock paper scissors' do
  before do
    visit '/'
    fill_in 'name', with: 'Nick'
    click_button 'Submit'
  end
  scenario 'game starts see game options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end







# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
