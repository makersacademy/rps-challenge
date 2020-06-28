feature 'Entering a move' do
  scenario 'Player enters a move: rock, paper or scissors' do
    visit '/'
    fill_in :player_name, with: 'Dhara'
    click_button 'Submit'
    fill_in :player_move, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Your move is rock'
  end
end
