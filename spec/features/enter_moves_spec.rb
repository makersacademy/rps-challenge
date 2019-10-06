feature 'Enter moves' do
  scenario 'Player 1 can select rock' do
    single_player_sign_in
    click_button 'Rock'
    expect(page).to have_content 'Nathan choose Rock'
  end
end
