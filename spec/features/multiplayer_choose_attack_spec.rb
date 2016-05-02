feature 'multiplayers choose attacks' do
  scenario 'player 1 chooses an attack' do
    multi_player_with_names
    click_button 'Rock'
    expect(page).to have_content 'Emma made an intriguing choice'
  end
  scenario 'player 2 chooses an attack' do
    multi_player_with_names
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'The winner is: Ingrid'
  end
end
