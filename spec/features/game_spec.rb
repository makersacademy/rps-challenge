feature 'Entering a move' do
  scenario 'Player enters a move, computer move selected and result shown' do
    srand(4)
    visit '/'
    fill_in :player_name, with: 'Dhara'
    click_button 'Submit'
    fill_in :player_move, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content "Your move is rock"
    expect(page).to have_content "Computer move is scissors"
    expect(page).to have_content "You win!"
  end
end
