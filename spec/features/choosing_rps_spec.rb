feature 'player can choose rock paper scissors' do
  scenario 'page has a button for rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'page confirms the choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You went with Rock")
  end

  scenario 'page does not show choice before the move' do
    sign_in_and_play
    expect(page).not_to have_content("You went with Rock")
  end
end
