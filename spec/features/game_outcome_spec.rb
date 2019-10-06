feature 'Single player game outcome' do
  scenario 'Player 1 wins' do
    allow_any_instance_of(Player).to receive(:random_move) { 'Scissors' }
    single_player_sign_in
    click_button 'Rock'
    click_button 'Reveal Winner'
    click_button 'Reveal Winner'
    expect(page).to have_content 'Nathan won'
  end

  scenario 'Computer wins' do
    allow_any_instance_of(Player).to receive(:random_move) { 'Paper' }
    single_player_sign_in
    click_button 'Rock'
    click_button 'Reveal Winner'
    click_button 'Reveal Winner'
    expect(page).to have_content 'COMPUTER won'
  end

  scenario 'confirms when it was a draw' do
    allow_any_instance_of(Player).to receive(:random_move) { 'Rock' }
    single_player_sign_in
    click_button 'Rock'
    click_button 'Reveal Winner'
    click_button 'Reveal Winner'
    expect(page).to have_content 'its a tie, both players played Rock'
  end
end
