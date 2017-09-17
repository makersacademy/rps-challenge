feature 'confirms the attack used' do
  scenario 'player uses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('Player uses Rock!')
  end
  scenario 'player uses paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('Player uses Paper!')
  end
  scenario 'player uses scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content('Player uses Scissors!')
  end
end
