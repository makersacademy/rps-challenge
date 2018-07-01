require './app.rb'

describe '/player_one_entry.erb' do
  feature 'player is able to enter their name' do
    scenario 'player can enter their name on screen' do
      visit '/player_one_entry'
      expect(page).to have_selector("input[type=text][name='player_one_name']")
    end
  end
end
