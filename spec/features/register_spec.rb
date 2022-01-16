# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
require 'spec_helper'
require 'rails_helper'

feature 'Register name' do
  scenario 'register user name' do
    visit ('/')
    fill_in 'name', with: 'Rizina'
    click_button 'Submit'
    expect(page).to have_content 'Rizina'

  end
end
