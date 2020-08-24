feature 'Player makes choice and it displayed on next screen' do
  scenario 'Rock is chosen' do
    player_1_sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('Yasmin has chosen Rock')
  end

  scenario 'Scissors are chosen' do
    player_1_sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content('Yasmin has chosen Scissors')
  end

  scenario 'Paper is chosen' do
    player_1_sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('Yasmin has chosen Paper')
  end
end
