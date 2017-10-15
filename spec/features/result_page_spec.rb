feature 'Result page' do
  context 'one player' do
    scenario 'the users choice is displayed' do
      one_player_version
      click_button 'Rock'
      expect(page).to have_content "rock"
    end
    scenario 'the computer choice is displayed' do
      one_player_version
      click_button "Spock"
      expect(page).to have_content(/rock|paper|scissors|lizard|spock/) 
    end
    scenario 'the result is displayed' do
      one_player_version
      click_button 'Paper'
      expect(page).to have_content(/Won|Lost|Drew/)
    end
    scenario 'the player can choose to play again' do
      one_player_version
      click_button 'Lizard'
      expect(page).to have_button "Again?"
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
  end
end
