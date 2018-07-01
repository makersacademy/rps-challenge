require './app.rb'

describe Janken do
# I can enter my name before the game
  feature '/player_one_entry' do
    scenario 'player is able to enter their name' do
      visit '/'
      click_button 'Single Player'
      fill_in 'player_one_name', with: :player_one
      click_button
      expect(page).to have_content :player_one
    end
  end

# I will be presented with three choices

# I can choose one option

# The game will choose a random option

# A winner is declared

end
