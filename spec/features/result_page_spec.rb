feature 'Result page' do
  context 'one player' do
    before do
      one_player_version
      click_button 'Rock'
    end
    scenario 'the users choice is displayed' do
      expect(page).to have_content "rock"
    end
    scenario 'the computer choice is displayed' do
      expect(page).to have_content(/rock|paper|scissors|lizard|spock/) 
    end
    scenario 'the result is displayed' do
      expect(page).to have_content(/Won|Lost|Drew/)
    end
    scenario 'the player can choose to play again' do
      expect(page).to have_button "Again?"
    end
    scenario 'the again button returns the player to the choice screen' do
      click_button "Again?"
      expect(page).to have_current_path '/play'
    end
    scenario 'the player can choose to go back to the start page' do
      expect(page).to have_button "Restart"
    end
    scenario 'the again button returns the player to the choice screen' do
      click_button "Restart"
      expect(page).to have_current_path '/'
    end
  end
  
  context 'two player' do
    before do
      two_player_version
      click_button 'Rock'
      click_button 'Spock'
    end
    scenario 'the users choices are displayed' do
      expect(page).to have_content "rock" && "spock"
    end
    scenario 'the result is displayed' do
      expect(page).to have_content(/Won|Draw/)
    end
    scenario 'the player can choose to play again' do
      expect(page).to have_button "Again?"
    end
    scenario 'the again button returns the player to the choice screen' do
      click_button "Again?"
      expect(page).to have_current_path '/two_play'
    end
    scenario 'the player can choose to go back to the start page' do
      expect(page).to have_button "Restart"
    end
    scenario 'the again button returns the player to the choice screen' do
      click_button "Restart"
      expect(page).to have_current_path '/'
    end
  end
end
