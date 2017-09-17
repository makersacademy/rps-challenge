feature 'Player 2 choice confirm' do
  scenario 'check player one a makes wrong choice and returns enter choice page' do
    sign_in_2
    fill_in :player_1_choice, with: 'rock'
    click_button 'ENTER CHOICE'
    fill_in :player_2_choice, with: 'rockk'
    expect(page).to have_button 'ENTER CHOICE'
  end
end
