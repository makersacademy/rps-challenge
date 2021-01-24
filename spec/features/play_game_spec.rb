feature 'Playing the game' do
  scenario 'player signs in and chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You have chosen Rock")
  end

  scenario 'player signs in and chooses paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content("You have chosen Paper")
  end

  scenario 'player signs in and chooses scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content("You have chosen Scissors")
  end
end
