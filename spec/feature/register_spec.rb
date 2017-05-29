require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register name' do
  scenario 'Register and see my name displayed' do
    visit '/'
    fill_in('name', with: 'Sam')
    click_button('Submit')
    expect(page).to have_content('Sam')
  end
end
