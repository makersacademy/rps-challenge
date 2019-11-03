require 'spec_helper'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Registering Player' do
  scenario 'Can register player' do
    visit '/'
    fill_in 'name', with: 'Muna'
    click_button 'Submit'
    expect(page).to have_content 'Muna'
  end
end
