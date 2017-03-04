require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'name registration' do
  scenario 'allows player to enter his/her name and see it' do
      visit '/'
      fill_in 'name', with: 'Noora'
      click_button 'Submit'
      expect(page).to have_content 'Noora'
  end
end



# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
