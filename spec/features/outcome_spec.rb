feature 'Outcome' do
  scenario 'shows battle result' do
    sign_in_to_play
    click_button 'Rock'
    expect(page).to have_content('You chose Rock! The computer chose paper! You lost this round!')
  end
end
