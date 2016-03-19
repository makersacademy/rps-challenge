require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'register name' do
    scenario 'register and see name before playing online game' do
    visit '/'
    fill_in 'name', with: 'Nick'
    click_button 'Submit'
    expect(page).to have_content 'Nick'
  end
end











# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
