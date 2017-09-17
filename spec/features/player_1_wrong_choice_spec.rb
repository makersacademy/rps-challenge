feature 'Player 1 choice confirm' do
  scenario 'check player one a makes wrong choice and returns enter choice page' do
    sign_in
    fill_in :player_1_choice, with: 'rockk'
    click_button 'ENTER CHOICE'
    expect(page).to have_button 'ENTER CHOICE'
  end
end
