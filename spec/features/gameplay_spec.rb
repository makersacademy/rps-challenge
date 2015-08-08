require 'spec_helper'



feature 'Starting a new game' do
  scenario 'I click new game button & am taken to new game' do
    visit "/"
    click_link "Play!"
    expect(page).to have_content "Choose Rock, Paper or Scissors"
  end
end



