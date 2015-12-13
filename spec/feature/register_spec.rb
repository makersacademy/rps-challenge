require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
describe 'registering name' do
  scenario 'register and see my name' do
    visit('/')
    fill_in 'name', with: test
    click_button 'submit'
    expect(page).to have_content('test')
  end
end
