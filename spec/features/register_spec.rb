require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registering players name' do
  scenario 'Register and see my name' do
    visit '/' # I'm visualising a form on the index page,
    fill_in 'name', with: 'Ferdinand' # where I can enter my name,
    click_button 'Submit' # click submit,
    expect(page).to have_content 'Ferdinand' # and see it on the screen!
  end
end
