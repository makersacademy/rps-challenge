require 'spec_helper'

feature 'Starting a new game' do

  context 'when on new game screen' do
    scenario 'user is asked to enter name' do
      visit '/register'
      expect(page).to have_field("name")
    end
  end

  context 'when user enters name' do
    scenario 'user is taken to the game page' do
      visit '/register'
      fill_in('name', with: 'Owen')
      click_button('Submit')
      expect(current_path).to eq '/game_page'
    end
  end

  context 'when user does not enter name' do
    scenario "user is given name 'Player1' and is taken to the game page" do
      visit '/register'
      click_button('Submit')
      expect(page).to have_content("Hello, Player1! Rock Paper Scissors Shoot!")
    end
  end

end
