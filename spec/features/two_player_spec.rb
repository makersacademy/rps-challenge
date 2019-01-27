feature 'two_player' do
  scenario 'names entered' do
    enter_two_names
    expect(page).to have_content "It's Mel's turn - make your choice (Sue no looking!)"
  end
  scenario 'both players have made choice' do
    enter_two_names
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'Congratulations Sue, you won! Better luck next time Mel'
  end
  scenario 'both players have made same choice' do
    enter_two_names
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content "It's a draw"
  end
end
