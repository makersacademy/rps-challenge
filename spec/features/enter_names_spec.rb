# require 'app'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Input player name' do
    scenario 'Input player names' do
      visit('/')
      fill_in :player1, with: 'Larry'
      click_button 'Submit'
      expect(page).to have_content 'Larry'
    end 
end

