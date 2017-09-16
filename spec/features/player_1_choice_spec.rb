feature 'Player 1 choice confirm' do
  scenario 'check player one choice is confirmed' do
    sign_in
    fill_in :player_1_choice, with: 'rock'
    click_button 'ENTER CHOICE'
    expect(page).to have_content 'you chose rock'
  end
end
