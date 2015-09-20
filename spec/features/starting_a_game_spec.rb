require 'spec_helper'

feature 'starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content("Please enter your name:")
  end

  scenario 'I am asked to pick a weapon' do
    visit '/'
    fill_in('name', :with => 'Adrian')
    click_button("Start Game")
    expect(page).to have_content("Choose from your weapon! And choose carefully...")
  end

end
