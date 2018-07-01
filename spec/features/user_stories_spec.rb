require './app.rb'

describe Janken do
# I can enter my name before the game
  feature '/player_one_entry' do
    scenario 'player is able to enter their name' do
      sign_in_single_player
      expect(page).to have_content :player_one
    end
  end

# I will be presented with three choices
# I can choose one option
  feature '/play' do
    scenario 'player is able to choose between three game objects' do
      sign_in_single_player
      click_button 'Rock'
      expect(page).to have_content "#{:player_one} selected Rock"
    end
  end

# The game will choose a random option

# A winner is declared

end
