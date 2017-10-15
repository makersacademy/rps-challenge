feature 'Result page' do
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
