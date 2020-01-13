feature 'Play page has the correct buttons' do
  scenario 'Player is presented with the options as buttons' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
