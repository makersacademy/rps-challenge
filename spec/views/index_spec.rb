require './app.rb'

describe '/index.erb' do
  feature 'select single or multiplayer game' do
    scenario 'player can begin a single player game' do
      visit '/'
      expect(page).to have_selector("input[type=submit][value='Single Player']")
    end
  end
end
