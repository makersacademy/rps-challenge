require 'spec_helper'
require 'capybara'

feature 'Selecting weapon' do
  scenario 'selecting weapon' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content 'You picked Scissors!'
  end
end
