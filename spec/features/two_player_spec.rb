feature 'two_player' do
  scenario 'names entered' do
    enter_two_names
    expect(page).to have_content "It's Mel's turn - make your choice (Sue no looking!)"
  end
  scenario 'both players have made choice' do
    enter_two_names
    two_player_p1_win
    expect(page).to have_content 'Congratulations Sue, you won! Better luck next time Mel'
  end
  scenario 'both players have made same choice' do
    enter_two_names
    two_player_draw
    expect(page).to have_content "It's a draw"
  end

  scenario 'play more than one game' do
    enter_two_names
    two_player_draw
    click_button 'Play Again'
    two_player_draw
    expect(page).to have_content "It's a draw"
  end
end
