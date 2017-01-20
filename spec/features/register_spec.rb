require 'spec_helper'
# in spec/features/register_spec.rb

# User story 1
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature '1. Register' do
  scenario 'submit one player name' do
    visit('/register')
    fill_in :p1_name_input, with: 'Me'
    click_button 'Submit'
    expect(page).to have_content 'Me vs. The Computer'
  end
end
