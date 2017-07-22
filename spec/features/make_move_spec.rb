feature 'make a move' do
  scenario 'player can choose the move Rock' do
    sign_in_and_play
    fill_in :player_move, with: 'Rock'
    click_button 'Play'
    expect(page).to have_content 'Fred played Rock'
  end
  scenario 'player can choose the move Scissors' do
    sign_in_and_play
    fill_in :player_move, with: 'Scissors'
    click_button 'Play'
    expect(page).to have_content 'Fred played Scissors'
  end
end
