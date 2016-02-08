require_relative '../spec_helper.rb'

  feature 'Entering name'do
    scenario 'submit name'do
      visit('/')
      fill_in :player_name, with: 'Bob'
      click_button 'GO!'
      expect(page).to have_content 'Player: Bob'
    end
end
