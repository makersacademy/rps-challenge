require 'spec_helper'
require 'capybara'

feature 'Selecting weapon' do
  scenario 'select weapon' do
    sign_in_and_play
    fill_in :weapon, with: "Scissors"
    click_button "Let's PLAY!"
    expect(page).to have_content 'You picked Scissors!'
  end
end
